<?php

namespace App\Http\Controllers;

use App\Http\Requests\StorePostRequest;
use App\Http\Requests\UpdatePostRequest;
use App\Models\Post;
use Illuminate\Http\Request;
use Intervention\Image\Facades\Image;

class PostController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        try {
            $posts = Post::latest()->get();

            // return view('posts',compact('posts'));
            return response()->json([
                'posts'       => $posts,
                'status'      => "success",
                'status_code' => 200,
            ]);

        }
        catch (\Exception$e)
        {
            return response()->json([
                'data'        => $e->getMessage(),
                'status'      => "not found",
                'status_code' => 404,
            ]);
        }
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\StorePostRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StorePostRequest $request)
    {
        if ($request->hasFile('post_image'))
        {
            $postImage = $request->file('post_image');
            $imageName = hexdec(uniqid()) . '.' . $postImage->getClientOriginalExtension();
            Image::make($postImage)->save('uploads/posts/' . $imageName);
            $url = 'uploads/posts/' . $imageName;

        }
        $postCreated = Post::create([
            'title'       => $request->title,
            'author'      => $request->author,
            'post_image'  => $url,
            'description' => $request->description,
        ]);
        if ($postCreated)
        {
            return response()->json([
                'data'        => "post stored",
                'status'      => "success",
                'status_code' => 201,
            ]);
        }
        else
        {
            return response()->json([
                'data'        => '',
                'status'      => "create fail",
                'status_code' => 409,
            ]);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function show($postd)
    {
        $post = Post::findOrFail($postd);
        if ($post)
        {
            return response()->json([
                'data'        => $post,
                'status'      => "success",
                'status_code' => 200,
            ]);
        }
        else
        {
            return response()->json([
                'data'        => '',
                'status'      => "not found",
                'status_code' => 404,
            ]);
        }
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function edit($postId)
    {
        $post = Post::findOrFail($postId);
        if ($post)
        {
            return response()->json([
                'data'        => $post,
                'status'      => "success",
                'status_code' => 200,
            ]);
        }
        else
        {
            return response()->json([
                'data'        => '',
                'status'      => "not found",
                'status_code' => 404,
            ]);
        }
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdatePostRequest  $request
     * @param  \App\Models\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $postId)
    {

        if ($request->hasFile('post_image'))
        {
            if (file_exists($request->old_image))
            {
                unlink($request->old_image);

            }
            $postImage = $request->file('post_image');
            $imageName = hexdec(uniqid()) . '.' . $postImage->getClientOriginalExtension();
            Image::make($postImage)->save('uploads/posts/' . $imageName);
            $url = 'uploads/posts/' . $imageName;

        }

        $url         = $request?->old_image;
        $post        = Post::findOrFail($postId);
        $postUpdated = $post->update([
            'title'       => $request->title,
            'author'      => $request->author,
            'post_image'  => $url,
            'description' => $request->description,
        ]);

        if ($postUpdated)
        {
            return response()->json([
                'data'        => $post,
                'status'      => "success",
                'status_code' => 200,
            ]);
        }
        else
        {
            return response()->json([
                'data'        => '',
                'status'      => "update fail",
                'status_code' => 409,
            ]);
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function destroy($postId)
    {

        $post = Post::findOrFail($postId);
        if (file_exists($post->post_image))
        {
            unlink($post->post_image);
        }
        $postDeleted = $post->delete();
        if ($postDeleted)
        {
            return response()->json([
                'data'        => 'post deleted',
                'status'      => "success",
                'status_code' => 200,
            ]);
        }
        else
        {
            return response()->json([
                'data'        => 'delete fail',
                'status'      => "fail",
                'status_code' => 409,
            ]);
        }
    }
}