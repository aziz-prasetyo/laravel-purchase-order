<?php

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


/**
 * Auth routes
 */
Route::group(['namespace' => 'Auth'], function () {

    // Authentication Routes...
    Route::get('login', 'LoginController@showLoginForm')->name('login');
    Route::post('login', 'LoginController@login');
    Route::get('logout', 'LoginController@logout')->name('logout');

    // Registration Routes...
    if (config('auth.users.registration')) {
        Route::get('register', 'RegisterController@showRegistrationForm')->name('register');
        Route::post('register', 'RegisterController@register');
    }

    // Password Reset Routes...
    Route::get('password/reset', 'ForgotPasswordController@showLinkRequestForm')->name('password.request');
    Route::post('password/email', 'ForgotPasswordController@sendResetLinkEmail')->name('password.email');
    Route::get('password/reset/{token}', 'ResetPasswordController@showResetForm')->name('password.reset');
    Route::post('password/reset', 'ResetPasswordController@reset');

    // Confirmation Routes...
    if (config('auth.users.confirm_email')) {
        Route::get('confirm/{user_by_code}', 'ConfirmController@confirm')->name('confirm');
        Route::get('confirm/resend/{user_by_email}', 'ConfirmController@sendEmail')->name('confirm.send');
    }

    // Social Authentication Routes...
    Route::get('social/redirect/{provider}', 'SocialLoginController@redirect')->name('social.redirect');
    Route::get('social/login/{provider}', 'SocialLoginController@login')->name('social.login');
});

/**
 * Backend routes
 */
Route::group(['prefix' => 'admin', 'as' => 'admin.', 'namespace' => 'Admin', 'middleware' => 'admin'], function () {

    // Dashboard
    Route::get('/', 'DashboardController@index')->name('dashboard');

    // Reporting
    Route::get('/reporting', 'DashboardController@getReportingPage')->name('reporting');
    Route::get('/reporting/all-data-products', 'DashboardController@getAllDataProducts')->name('reporting.all.data.products');
    Route::get('/reporting/product-chart', 'DashboardController@getProductChartData')->name('reporting.product.chart');

    //Users
    Route::get('users', 'UserController@index')->name('users');
    Route::get('users/restore', 'UserController@restore')->name('users.restore');
    Route::get('users/{id}/restore', 'UserController@restoreUser')->name('users.restore-user');
    Route::get('users/{user}', 'UserController@show')->name('users.show');
    Route::get('users/{user}/edit', 'UserController@edit')->name('users.edit');
    Route::put('users/{user}', 'UserController@update')->name('users.update');
    Route::any('users/{id}/destroy', 'UserController@destroy')->name('users.destroy');
    Route::get('permissions', 'PermissionController@index')->name('permissions');
    Route::get('permissions/{user}/repeat', 'PermissionController@repeat')->name('permissions.repeat');
    Route::get('dashboard/log-chart', 'DashboardController@getLogChartData')->name('dashboard.log.chart');
    Route::get('dashboard/registration-chart', 'DashboardController@getRegistrationChartData')->name('dashboard.registration.chart');

    // Products
    Route::get('products', 'ProductController@index')->name('products');
    Route::get('products/{product}', 'ProductController@show')->name('products.show');
    Route::get('products/{product}/edit', 'ProductController@edit')->name('products.edit');
    Route::put('products/{product}', 'ProductController@update')->name('products.update');
    Route::any('products/{product}/destroy', 'ProductController@destroy')->name('products.destroy');
    Route::get('purchase-orders', 'PurchaseOrderController@index')->name('purchase_orders');
    Route::get('purchase-order-lines', 'PurchaseOrderLineController@index')->name('purchase_order_lines');
    Route::get('purchase-order-lines/create', 'PurchaseOrderLineController@create')->name('purchase_order_lines.create');
    Route::get('purchase-order-lines/{purchaseOrderLine}', 'PurchaseOrderLineController@show')->name('purchase_order_lines.show');
    Route::get('purchase-order-lines/{purchaseOrderLine}/edit', 'PurchaseOrderLineController@edit')->name('purchase_order_lines.edit');
    Route::put('purchase-order-lines/{purchaseOrderLine}', 'PurchaseOrderLineController@update')->name('purchase_order_lines.update');
    Route::any('purchase-order-lines/{purchaseOrderLine}/destroy', 'PurchaseOrderLineController@destroy')->name('purchase_order_lines.destroy');
    Route::post('purchase-order-lines', 'PurchaseOrderLineController@store')->name('purchase_order_lines.store');
});


Route::get('/', 'HomeController@index');

/**
 * Membership
 */
Route::group(['as' => 'protection.'], function () {
    Route::get('membership', 'MembershipController@index')->name('membership')->middleware('protection:' . config('protection.membership.product_module_number') . ',protection.membership.failed');
    Route::get('membership/access-denied', 'MembershipController@failed')->name('membership.failed');
    Route::get('membership/clear-cache/', 'MembershipController@clearValidationCache')->name('membership.clear_validation_cache');
});
