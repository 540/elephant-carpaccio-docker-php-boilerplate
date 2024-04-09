<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Elephant Carpaccio Kata</title>
</head>
<body>
<h1>Elephant Carpaccio Kata</h1>
<form method="post">
    <div>
        <label for="test data">test data</label>
        <input type="number" id="testdata" name="testdata">
    </div>
    <button type="submit" name="calculateButton">Calculate</button>
</form>
<?php
if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['calculateButton'])) {
    $testdata = $_POST['testdata'] ?? '';
    echo "<div>Test data : $testdata</div>";
}
?>
</body>
</html>
