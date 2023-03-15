<?php

// required headers
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Methods: PUT");
header("Access-Control-Max-Age: 3600");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");

// include database and object files
include_once '../config/db.php';
include_once '../object/gamer.php';

$database = new db();
$db = $database->getConnection();

// initialize object
$gamer = new Gamer($db);

// get posted data
$data = json_decode(file_get_contents("php://input", true));

// set ID property of gamer to be updated
$gamer->id = $data->id;
// set gamer property value
$gamer->nickname = $data->nickname;
$gamer->age = $data->age;
$gamer->level = $data->level;
// update the gamer
if ($gamer->update()) {
    echo '{';
    echo '"message": "gamer was updated."';
    echo '}';
}

// if unable to update the gamer, tell the user
else {
    echo '{';
    echo '"message": "Unable to update gamer."';
    echo '}';
}
