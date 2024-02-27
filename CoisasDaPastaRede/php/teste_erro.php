<?php
function inverse($x) {
    if (!$x) {
        throw new Exception('Divisão por zero.', 2);
    }
    return 1/$x;
}

try {
    echo inverse(5) . "<br>";
    echo inverse(0) . "<br>";
}

catch (Exception $e) {
    echo 'Exceção capturada: ',  $e->getMessage(), "<br>";
    echo "<pre>";
    var_dump($e);
    echo "</pre>";
}

finally {
    echo "será executado tendo erro ou não";
}

// Execução continua
echo "Olá mundo\n";
?>