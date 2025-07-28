<?php

namespace App\Http\Controllers;

use App\Models\City;
use Illuminate\Http\Request;

class CityController extends Controller
{
    public function index()
    {
        return response()->json(City::with('county')->get());
    }

    public function byCounty($countyId)
    {
        return response()->json(
            City::where('county_id', $countyId)->get()
        );
    }

    public function show($id)
    {
        $city = City::with('county')->find($id);

        if (!$city) {
            return response()->json(['error' => 'City not found'], 404);
        }

        return response()->json($city);
    }

    public function store(Request $request, $countyId)
    {
        $validated = $this->validate($request, [
            'name' => 'required|string|max:255',
        ]);

        $city = City::create([
            'county_id' => $countyId,
            'name' => $validated['name']
        ]);

        return response()->json($city, 201);
    }

    public function update(Request $request, $id)
    {
        $city = City::find($id);

        if (!$city) {
            return response()->json(['error' => 'City not found'], 404);
        }

        $validated = $this->validate($request, [
            'county_id' => 'sometimes|exists:counties,id',
            'name' => 'sometimes|string|max:255'
        ]);

        $city->update($validated);

        return response()->json($city);
    }

    public function destroy($id)
    {
        $city = City::find($id);

        if (!$city) {
            return response()->json(['error' => 'City not found'], 404);
        }

        $city->delete();

        return response()->json(['message' => 'City deleted']);
    }
}
