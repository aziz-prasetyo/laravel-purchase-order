@extends('admin.layouts.admin')

@section('title',__('views.admin.products.edit.title', ['product_name' => $product->product_name]) )

@section('content')
    <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">
            {{ Form::open(['route' => ['admin.products.update', $product->id], 'method' => 'put', 'class' => 'form-horizontal form-label-left']) }}

                <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="product_name" >
                        {{ __('views.admin.products.edit.product_name') }}
                        <span class="required">*</span>
                    </label>
                    <div class="col-md-6 col-sm-6 col-xs-12">
                        <input id="product_name" type="text" class="form-control col-md-7 col-xs-12 @if($errors->has('product_name')) parsley-error @endif" name="product_name" value="{{ $product->product_name }}" required>
                        @if($errors->has('product_name'))
                            <ul class="parsley-errors-list filled">
                                @foreach($errors->get('product_name') as $error)
                                  <li class="parsley-required">{{ $error }}</li>
                                @endforeach
                            </ul>
                        @endif
                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="product_code" >
                        {{ __('views.admin.products.edit.product_code') }}
                        <span class="required">*</span>
                    </label>
                    <div class="col-md-6 col-sm-6 col-xs-12">
                        <input id="product_code" type="text" class="form-control col-md-7 col-xs-12 @if($errors->has('product_code')) parsley-error @endif" name="product_code" value="{{ $product->product_code }}" required>
                        @if($errors->has('product_code'))
                            <ul class="parsley-errors-list filled">
                                @foreach($errors->get('product_code') as $error)
                                  <li class="parsley-required">{{ $error }}</li>
                                @endforeach
                            </ul>
                        @endif
                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="price" >
                        {{ __('views.admin.products.edit.price') }}
                        <span class="required">*</span>
                    </label>
                    <div class="col-md-6 col-sm-6 col-xs-12">
                        <input id="price" type="text" class="form-control col-md-7 col-xs-12 @if($errors->has('price')) parsley-error @endif" name="price" value="{{ $product->price }}" required>
                        @if($errors->has('price'))
                            <ul class="parsley-errors-list filled">
                                @foreach($errors->get('price') as $error)
                                  <li class="parsley-required">{{ $error }}</li>
                                @endforeach
                            </ul>
                        @endif
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                        <a class="btn btn-primary" href="{{ URL::previous() }}"> {{ __('views.admin.products.edit.cancel') }}</a>
                        <button type="submit" class="btn btn-success"> {{ __('views.admin.products.edit.save') }}</button>
                    </div>
                </div>
            {{ Form::close() }}
        </div>
    </div>
@endsection

@section('styles')
    @parent
    {{ Html::style(mix('assets/admin/css/products/edit.css')) }}
@endsection

@section('scripts')
    @parent
    {{ Html::script(mix('assets/admin/js/products/edit.js')) }}
@endsection