<?php

class Db
{

    private $host = "mio_dbserver:3306";
    private $db_name = "test";
    private $username = "root";
    private $password = "ciccio";
    public $conn;

    // get the database connection
    public function getConnection()
    {
        $this->conn = null;

        try {
            $this->conn = new PDO("mysql:host=" . $this->host . ";dbname=" . $this->db_name, $this->username, $this->password);
        } catch (PDOException $exception) {
            echo "Database connection error: " . $exception->getMessage();
        }

        return $this->conn;
    }
}
