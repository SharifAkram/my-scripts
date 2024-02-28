# Get all wireless network profiles stored on your computer

$profiles = netsh wlan show profiles | Select-String "All User Profile"

foreach ($profile in $profiles) {
    $profileName = $profile -replace ".*:\s*", ""

    # Retrieve password for each profile if it exists
    $passwordInfo = netsh wlan show profile name="$profileName" key=clear |
    Select-String "Key Content"

    if ($passwordInfo) {
        $password = $passwordInfo.ToString() -replace ".*:\s*", ""
        Write-Host "Profile: $profileName"
        Write-Host "Password: $password"
    }
    else {
        Write-Host "Profile: $profileName"
        Write-Host "No password found"
    }

    Write-Host "----------------------------------"
}
