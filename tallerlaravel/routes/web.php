<?php

use Illuminate\Support\Facades\Route;

Route::get('/', 'App\Http\Controllers\HomeController@index')->name("home.index");

Route::get('/products', 'App\Http\Controllers\ProductController@index')->name("product.index");

Route::get('/products/create', 'App\Http\Controllers\ProductController@create')->name("product.create");

Route::post('/products/save', 'App\Http\Controllers\ProductController@save')->name("product.save");

Route::get('/products/{id}', 'App\Http\Controllers\ProductController@show')->name("product.show");

Route::get('/about', function () {
    $data1 = "About us - Online Store";
    $data2 = "About us";
    $description = "This is an about page ...";
    $author = "Developed by: Gonzo";
    return view('home.about')->with("title", $data1)
      ->with("subtitle", $data2)
      ->with("description", $description)
      ->with("author", $author);
})->name("home.about");
Route::get('/contact', function () {
    $email = "fakecontact@eafit.com";
    $address = "Circular 900 #32 rotonda 20";
    $phone = "+57-333-420-8731";

    return view('home.contact')
        ->with('email', $email)
        ->with('address', $address)
        ->with('phone', $phone)
        ->with('title', 'Contact Us - Online Store')
        ->with('subtitle', 'Contact Information');
})->name('home.contact');
