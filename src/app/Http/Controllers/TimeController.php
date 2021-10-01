<?php

namespace App\Http\Controllers;

use App\Models\Movies;
use App\Transformers\MoviesToDto;
use Illuminate\Http\Request;
use Illuminate\Http\JsonResponse;

class TimeController extends Controller
{

    public function __invoke()
    {
        return new JsonResponse(['time' => strtotime('now')]);
    }
}
