@extends('admin.layouts.admin')

@section('title', __('views.admin.products.show.title', ['product_name' => $product->product_name]))

@section('content')
    <div class="row">
        <table class="table table-striped table-hover">
            <tbody>
              <tr>
                  <th>{{ __('views.admin.products.show.table_header_0') }}</th>
                  <td>{{ $product->product_name }}</td>
              </tr>

              <tr>
                  <th>{{ __('views.admin.products.show.table_header_1') }}</th>
                  <td>{{ $product->product_code }}</td>
              </tr>

              <tr>
                  <th>{{ __('views.admin.products.show.table_header_2') }}</th>
                  <td>{{ $product->price }}</td>
              </tr>

              <tr>
                  <th>{{ __('views.admin.products.show.table_header_3') }}</th>
                  <td>{{ $product->created_at }} ({{ $product->created_at->diffForHumans() }})</td>
              </tr>

              <tr>
                  <th>{{ __('views.admin.products.show.table_header_4') }}</th>
                  <td>{{ $product->updated_at }} ({{ $product->updated_at->diffForHumans() }})</td>
              </tr>
            </tbody>
        </table>
    </div>
@endsection
