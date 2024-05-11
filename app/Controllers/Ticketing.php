<?php

namespace App\Controllers;

class Ticketing extends BaseController {

  public function index() {
    return view('ticketing/index');
  }
}