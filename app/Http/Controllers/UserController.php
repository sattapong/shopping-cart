<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\User;

use App\Http\Requests;

use Auth;

class UserController extends Controller
{
	public function getSignup()
	{
		return view('user.signup');
	}

	public function postSignup(Request $request)
	{
		$this->validate($request, [
			'email' => 'email|required|unique:users',
			'password' => 'required|min:4'
		]);

		$user = new User([
			'email' => $request->input('email'),
			'password' => bcrypt($request->input('password')),
			 	'remember_token' => str_random(10)
		]);

		$user->save();

		 Auth::login($user);

		return redirect()->route('product.index');

	}

	public function getSignin()
	{
		return view('user.signin');
	}

	public function postSignin(Request $request)
	{
		$this->validate($request,[
			'email' => 'email|required',
			'password' => 'required|min:4'
		]);	

		//$EmailPassword = ['email'=>$request->input('email'),'password' => $request->input('password')];

		if(Auth::attempt(['email'=>$request->input('email'),'password' => $request->input('password')])){

			return redirect()->route('user.profile');

		}

		return redirect()->back();

	}

	public function getProfile()
	{
		return view('user.profile');
	}
	public function getLogout()
	{
		Auth::logout();
	return view('user.signin');
	}

}
