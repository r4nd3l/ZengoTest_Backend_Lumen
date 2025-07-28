<?php

namespace App\Http\Controllers;

use App\Models\County;

class CountyController extends Controller
{
    public function index()
    {
        return response()->json(County::all());
    }

    public function show($id)
    {
        $county = County::find($id);

        if (!$county) {
            return response()->json(['error' => 'County not found'], 404);
        }

        // return response()->json($county);

        return response()->json(
            County::with('cities')->findOrFail($id)
        );
    }
}
