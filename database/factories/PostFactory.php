<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Post>
 */
class PostFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        return [
            'title'=>fake()->sentence(6),
            'author'=>fake()->name('male'),
            'post_image'=>"https://picsum.photos/seed/picsum/840/600",
            'description'=>fake()->paragraph(5)
        ];
    }
}
