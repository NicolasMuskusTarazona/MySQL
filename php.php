<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

try {
    $dsn = "mysql:host=localhost;dbname=familia;charset=utf8";
    $usuario = "root";
    $password = "admin";

    $pdo = new PDO($dsn, $usuario, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    $nombre = $_POST['nombre'];
    $fecha_nacimiento = $_POST['fecha_nacimiento'];

    $sql = "INSERT INTO Integrantes (name, nacimiento) VALUES (:nombre, :fecha_nacimiento)";
    $stmt = $pdo->prepare($sql);
    $stmt->bindParam(':nombre', $nombre);
    $stmt->bindParam(':fecha_nacimiento', $fecha_nacimiento);

    $stmt->execute();

    echo "✅ Registro guardado con éxito.";

} catch (PDOException $e) {
    echo "❌ Error en la conexión o consulta: " . $e->getMessage();
}
?>
