<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ArticleController;
use App\Http\Controllers\Product\ProductController;
use App\Http\Controllers\WeatherForecast\WeatherForecastController;
use App\Http\Controllers\WeatherForecast\HomeController;


/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Route::get('/', function () {
//     return view('welcome');
// });

// Route::get('/articles', function () {
//     return 'Article List';
// });

// Route::get('/articles/detail', function () {
//     return 'Article Detail';
// })->name('article.detail');

// Route::get('/articles/detail/{id}', function ( $id ) {
//     return "Article Detail - $id";
// });

// Route::get('/articles/more', function() {
//     return redirect('/articles/detail');
// });

// Route::get('/articles/more', function() {
//     return redirect()->route('article.detail');
// });

Route::get('/locale/{locale}',function($locale){
    session::put('locale',$locale);
    return redirect()->back();
});

Route::get('/articles', [ArticleController::class, 'index'])->name('articles');

Route::get('/articles/detail/{id}', [
ArticleController::class,
'detail'
]);


Route::get('/products', [ProductController::class, 'index']);  
Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

Route::get('/', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
Route::get('/weatherforecast', [WeatherForecastController::class, 'index'])->name('weatherforecast');
Route::get('/articles', [ArticleController::class, 'index'])->name('articles');
Route::get('/articles', [ArticleController::class, 'index'])->name('articles');
Route::get('/articles', [ArticleController::class, 'index'])->name('articles');

