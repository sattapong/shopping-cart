<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Product;
use Session;
use App\Cart;

class ProductController extends Controller
{
	public function getIndex(){

		$products = Product::all();
		return view('shop.index',[
			'product'=>$products,
		]);
	}

	public function getAddtoCart(Request $request,$id)
	{
		$product = Product::find($id);
		$oldCart = Session::has('cart') ? Session::get('cart') : null;
	//	echo 'oldCart = '.$oldCart;
	//	echo "<br>";
		//echo 'product = '.$product;
		//echo "<br>";
		$cart = new Cart($oldCart);
		$cart->add($product,$product->id);

		$request->session()->put('cart',$cart);

		//dd($request->session()->get('cart'));
		
		return redirect()->route('product.index');
	}

	public function getCart()
	{

		if(!Session::has('cart'))
		{
			return view('shop.shopping-cart', ['product'=>null]);
		}

		$oldCart = Session::get('cart');
		$cart = new Cart($oldCart);

		return view('shop.shopping-cart',[
			'products' => $cart->items,
			'totalPrice' => $cart->totalPrice
		]);
		
	}

	public function getCheckout()
	{

	 if(!Session::has('cart')){
		 return view('shop.shopping-cart');
	 }
	 $oldCart = Session::get('cart');
	 $cart = new Cart($oldCart);
	 $total = $cart->totalPrice;
	 return view('shop.checkout',['total' => $total]);
		
	}
	

}
