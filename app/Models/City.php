<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class City extends Model
{
    protected $fillable = ['county_id', 'name'];

    public function county()
    {
        return $this->belongsTo(County::class);
    }
}
