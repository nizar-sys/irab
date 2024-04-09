<?php

namespace App\Http\Controllers;

use App\Models\Page;
use Illuminate\Http\Request;

class IrabController extends Controller
{
    public function landingPage()
    {
        return view('irab.landing');
    }

    public function pageDetail($slugPage)
    {
        $page = Page::whereTitle(str($slugPage)->replace('-', ' '))->first();
        if(!$page){
            return redirect('/')->with('error', 'Halaman tidak ditemukan.');
        }
        return view('irab.page-detail', compact('page'));
    }
}
