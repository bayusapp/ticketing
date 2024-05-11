<?php

namespace App\Controllers;

use App\Models\M_Laboratorium;

class Ticketing extends BaseController {

  protected $laboratorium;

  public function __construct()
  {
    $this->laboratorium = new M_Laboratorium();
  }

  public function index() {
    $data['laboratorium'] = $this->laboratorium->getAllLaboratorium();
    return view('ticketing/index', $data);
  }
}