<?php

// Set default timezone
date_default_timezone_set('Asia/Jakarta');

// Aktifkan error reporting untuk debugging
error_reporting(E_ALL);  // Menampilkan semua error
ini_set('display_errors', 1);  // Menampilkan error di halaman

// Maintenance mode
$maintenance = 0; //** 1 = ya ..  0 = tidak
if ($maintenance == 1) {
    die("Site under Maintenance.");
}

// Database configuration
$config['db'] = array(
    'host' => getenv('DB_HOST'),
    'name' => getenv('DB_NAME'),
    'username' => getenv('DB_USER'),
    'password' => getenv('DB_PASS')
);

// Cek koneksi database
$conn = mysqli_connect($config['db']['host'], $config['db']['username'], $config['db']['password'], $config['db']['name']);
if (!$conn) {
    die("Koneksi Gagal : " . mysqli_connect_error());
} else {
    // Jika koneksi berhasil, bisa tambahkan pesan ini untuk memastikan koneksi berhasil
    // echo "Koneksi Berhasil!";
}

// Web configuration
$config['web'] = array(
    'url' => 'ionsgroup.site'  // Isi dengan domain kamu: https://domain.com/
);

// Date and time
$date = date("Y-m-d");
$time = date("H:i:s");

$tanggal = date("Y-m-d");
$waktu = date("H:i:s");

// Memanggil file lain yang diperlukan
require("lib/function.php");
require("lib/setting.php");

?>
