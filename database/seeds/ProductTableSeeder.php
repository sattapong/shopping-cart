<?php

use Illuminate\Database\Seeder;

class ProductTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
    	$product = new \App\Product([
    		'imagePath' => 'https://hpmedia.bloomsbury.com/rep/s/9781408855904_309575.jpeg',
    		'title' => 'Harry Potter',
    		'description' => 'Super Cool',
    		'price' => 20
    	]);
    	$product->save();

    		$product = new \App\Product([
    		'imagePath' => 'https://hpmedia.bloomsbury.com/rep/s/9781408855904_309575.jpeg',
    		'title' => 'Harry Potter',
    		'description' => 'Super Cool',
    		'price' => 20
    	]);
    	$product->save();

    		$product = new \App\Product([
    		'imagePath' => 'https://hpmedia.bloomsbury.com/rep/s/9781408855904_309575.jpeg',
    		'title' => 'Harry Potter',
    		'description' => 'Super Cool',
    		'price' => 20
    	]);
    	$product->save();

    		$product = new \App\Product([
    		'imagePath' => 'https://hpmedia.bloomsbury.com/rep/s/9781408855904_309575.jpeg',
    		'title' => 'Harry Potter',
    		'description' => 'Super Cool',
    		'price' => 20
    	]);
    	$product->save();

    		$product = new \App\Product([
    		'imagePath' => 'https://hpmedia.bloomsbury.com/rep/s/9781408855904_309575.jpeg',
    		'title' => 'Harry Potter',
    		'description' => 'Super Cool',
    		'price' => 20
    	]);
    	$product->save();

    		$product = new \App\Product([
    		'imagePath' => 'https://hpmedia.bloomsbury.com/rep/s/9781408855904_309575.jpeg',
    		'title' => 'Harry Potter',
    		'description' => 'Super Cool',
    		'price' => 20
    	]);
    	$product->save();
    }
}
