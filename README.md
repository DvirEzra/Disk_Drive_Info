# PowerShell Script: Disk Drive Information Retrieval


- [PowerShell Script: Disk Drive Information Retrieval](#powershell-script-disk-drive-information-retrieval)
  - [Overview](#overview)
  - [Prerequisites](#prerequisites)
  - [Usage](#usage)
    - [1. Clone or Download the Repository](#1-clone-or-download-the-repository)
    - [2. Edit the Script](#2-edit-the-script)
    - [3. Specify the Target Computer List](#3-specify-the-target-computer-list)
    - [4. Run the Script](#4-run-the-script)
    - [5. View the Results](#5-view-the-results)
  - [Example Output](#example-output)
  - [Notes](#notes)


## Overview

This PowerShell script, `disk_drive_info.ps1`, allows you to retrieve disk drive information from remote computers specified in a text file and export the results to a CSV file. The script leverages WMI (Windows Management Instrumentation) to collect data about fixed hard disk drives from multiple remote machines.

## Prerequisites

Before using this script, make sure you have the following prerequisites:

1. **PowerShell**: Ensure that PowerShell is installed on your computer. This script is designed to work with PowerShell.

2. **Administrator Privileges**: You may need administrative privileges on the target computers to access WMI information remotely.

3. **Target Computer List**: Create a text file containing a list of computer names or IP addresses that you want to query. Each computer name or IP address should be on a separate line. You can specify the path to this file in the script.

## Usage

Follow these steps to use the script:

### 1. Clone or Download the Repository

Clone or download this repository to your local machine.

### 2. Edit the Script

Open the `disk_drive_info.ps1` script in a text editor or PowerShell ISE.

### 3. Specify the Target Computer List

Edit the script to specify the path to the text file containing the list of target computers. Modify the following line in the script:

   ```powershell
   Get-Content C:\Temp\computers.txt
   ```

   Replace `C:\Temp\computers.txt\csv` with the actual path to your computer list file.

### 4. Run the Script

Save the script after making your changes. Open a PowerShell terminal with administrator privileges. Navigate to the directory where you saved the script. Run the script by entering the following command:

   ```powershell
   .\disk_drive_info.ps1
   ```

   The script will execute and retrieve disk drive information from the specified computers.

### 5. View the Results

Once the script finishes running, you will find the results in a CSV file named `results.csv`. By default, the CSV file is saved in the `C:\Temp` directory. You can modify the output path in the script if needed.

## Example Output

The script will generate a CSV file (`results.csv`) containing the following columns:

- `SystemName`: The name of the remote computer.
- `Model`: The model of the fixed hard disk drive.
- `Size(GB)`: The size of the hard disk drive in gigabytes.

Here's an example of what the `results.csv` file may look like:

```
SystemName,Model,Size(GB)
Computer1,WD1234,100
Computer2,Seagate5678,250
Computer3,Samsung7890,500
```

## Notes

- Ensure that you have proper permissions and firewall rules to access WMI on the remote computers.
- This script is designed to work with computers running Windows operating systems.
- Customize the script further to suit your specific requirements if necessary.
