<?php

namespace App\Http\Controllers;

use App\Models\Page;
use Illuminate\Http\Request;
use App\Http\Requests\RequestStoreOrUpdatePage;
use Illuminate\Support\Facades\Hash;

class PageController extends Controller
{

    public function __construct()
    {
        $this->middleware(['roles:admin'])->except(['index', 'show']);
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $pages = Page::orderByDesc('id');
        $pages = $pages->paginate(50);

        return view('dashboard.pages.index', compact('pages'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('dashboard.pages.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(RequestStoreOrUpdatePage $request)
    {
        $validated = $request->validated() + [
            'created_at' => now(),
        ];

        $page = Page::create($validated);

        return redirect(route('pages.index'))->with('success', 'Page berhasil ditambahkan.');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        return Page::findOrFail($id);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $page = Page::findOrFail($id);

        return view('dashboard.pages.edit', compact('page'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(RequestStoreOrUpdatePage $request, $id)
    {
        $validated = $request->validated() + [
            'updated_at' => now(),
        ];

        $page = Page::findOrFail($id);

        $page->update($validated);

        return redirect(route('pages.index'))->with('success', 'Page berhasil diperbarui.');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $page = Page::findOrFail($id);

        $page->delete();

        return redirect(route('pages.index'))->with('success', 'Page berhasil dihapus.');
    }
}
