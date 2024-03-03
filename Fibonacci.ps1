# Fibonacci program using recursion and memoization

$cache = @{}

function Get-Fibonacci ($n) {
    if ($n -le 1) {
        return 1
    }

    if ($cache.ContainsKey($n)) {
        return $cache[$n]
    }

    $fib = (Get-Fibonacci ($n - 1)) + (Get-Fibonacci ($n - 2 ))
    $cache[$n] = $fib
    return $fib
}

$output = ""
foreach ($i in 0..150) {
    $output += ("{0}, " -f (Get-Fibonacci $i))
}

Write-Host "$output..."
