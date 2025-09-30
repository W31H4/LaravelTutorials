<?php
declare(strict_types=1);

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\View\View;
use Illuminate\Http\RedirectResponse;
use App\Models\Product;

class ProductController extends Controller
{
    public function index(): View
    {
        $viewData = [];
        $viewData['title'] = 'Products - Online Store';
        $viewData['subtitle'] = 'List of products';
        $viewData['products'] = Product::all();

        return view('product.index')->with('viewData', $viewData);
    }

    public function show(int $id): View|RedirectResponse
    {
        $product = Product::find($id);
        if (!$product) {
            return redirect()->route('home.index');
        }

        $viewData = [];
        $viewData['title'] = $product->getName() . ' - Online Store';
        $viewData['subtitle'] = $product->getName() . ' - Product information';
        $viewData['product'] = $product;

        return view('product.show')->with('viewData', $viewData);
    }

    public function create(): View
    {
        $viewData = [];
        $viewData['title'] = 'Create product';

        return view('product.create')->with('viewData', $viewData);
    }

    public function save(Request $request): RedirectResponse
    {
        $validated = $request->validate([
            'name'  => ['required', 'string'],
            'price' => ['required', 'integer'],
        ]);

        Product::create($validated);

        return back();
    }

    public function success(): View
    {
        $viewData = [];
        $viewData['title'] = 'Product Created Successfully';
        $viewData['subtitle'] = 'Success';

        return view('product.success')->with('viewData', $viewData);
    }
}
