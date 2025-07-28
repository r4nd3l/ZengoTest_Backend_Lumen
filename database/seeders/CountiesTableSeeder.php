<?php

namespace Database\Seeders;

use App\Models\County;
use Illuminate\Database\Seeder;

class CountiesTableSeeder extends Seeder
{
    public function run()
    {
        // fetch counties data from the original JSON
        $countiesJson = file_get_contents(storage_path('app/data/counties.json'));
        $counties = json_decode($countiesJson, true);

        foreach ($counties as $county) {
            County::create([
                'name' => $county['name']
            ]);
        }
    }
}
