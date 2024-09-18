# This command shows detailed information about the physical memory modules installed in your PC.

Get-CimInstance -ClassName Win32_PhysicalMemory | Select-Object Capacity, Manufacturer, Speed, PartNumber
