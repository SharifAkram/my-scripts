# Creates random Chuck Norris joke from the API (https://api.chucknorris.io/)

function Get-RandomChuckNorrisJoke {
    $url = "https://api.chucknorris.io/jokes/random"
    $response = Invoke-RestMethod -Uri $url -Method Get
    return $response.value
}

Write-Host "Fetching random Chuck Norris joke..."
$joke = Get-RandomChuckNorrisJoke
Write-Host "Here's a Chuck Norris joke for you:"
Write-Host $joke
