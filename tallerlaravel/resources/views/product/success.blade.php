@extends('layouts.app')

@section('title', 'Product Created')

@section('content')
<div class="container">
  <div class="alert alert-success" role="alert">
    Product created.
  </div>
  <a href="{{ route('product.index') }}" class="btn btn-primary">Back to products</a>
</div>
@endsection
