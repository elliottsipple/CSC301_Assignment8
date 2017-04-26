<?php

// Connecting to the MySQL database
$user = 'sipplee1';
$password = 'qTLDqMuc';

$database = new PDO('mysql:host=csweb.hh.nku.edu;dbname=db_spring17_sipplee1', $user, $password);

// Start the session
session_start();

$current_url = basename($_SERVER['REQUEST_URI']);

// if customerID is not set in the session and current URL not login.php redirect to login page
if(!isset($_SESSION['customerID']) && $current_url != 'login.php') {
    header('location.php');
}

// Else if session key customerID is set get $customer from the database
elseif(isset($_SESSION['customerID'])) {
    function my_autoloader($class) {
        include 'classes/class.' . $class . '.php';
    }
    spl_autoload_register('my_autoloader');
    
    $sql = file_get_contents('sql/getCustomer.sql');
    $params = array(
        'customerID' => $_SESSION['customerID']
    );
    $statement = $database->prepare($sql);
    $statement->execute($params);
    $customers = $statement->fetchAll(PDO::FETCH_ASSOC);

    $customer = $customers[0];

    // new Customer
    $user = new Customer($customerid, $database);
}