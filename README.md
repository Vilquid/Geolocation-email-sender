# Geolocation-email-sender

This PowerShell script periodically checks for an active internet connection and, once established, it fetches the latitude and longitude details from your location and sends these details via an Outlook email client to an email address.

## How it Works
This script runs in a loop until an active internet connection is detected. Once connected, it sends a GET request to the Big Data Cloud API to retrieve the geographical coordinates of a specified location.

These coordinates are then sent via an email message, using Microsoft Outlook.

## Prerequisites
To run this script, you will need :
- PowerShell
- Microsoft Outlook installed on your machine
- An active Internet connection

## Installation & Usage

1. Clone this repository to your local machine.
2. Open the script file in a text editor and replace EMAIL_ADDRESS in $mail.Recipients.Add("EMAIL_ADDRESS") with the recipient's actual email address.
3. Save the changes and run the script with PowerShell.

## Error Handling

The script has a basic error handling mechanism for Outlook email sending operation. If an error occurs, the error message will be outputted to the PowerShell console.

## Tips from the creator

1. If you don't want to buy a rubber ducky, you can execute automatically 4.ps1 by runnig 4.bat with an SFX archive. Moreover if you use an NSFW picture for your archive, the thief's curiosity will be triggered and, maybe, you will receive by email his location.
2. With an SFX archve, you can delete 4.ps1 and 4.bat after their extraction.

## Contributing

We welcome contributions to this project. Please feel free to open an issue or submit a pull request.

## Support

If you encounter any issues or require further assistance, please don't raise an issue on this GitHub repository because I won't read it.
