As of 2/22/2024, microsoft defender will detect and block this command from running. I now have the prestigious honor of supporting microsoft threat intelligence directly. 

To avoid microsoft defender from detecting and blocking this script, simply change the code slightly to change its hash.

Using IExpress, you can create a self extracting executable which can be used to pack and automatically run the reverse shell powershell script by calling cmd.exe. The exe file is simply a proof of concept for personal referance, and is configured to connect to IP 192.168.56.101 on port 5000 for LAN testing purposes. As-is, Microsoft Defender will detect and quarantine the executable. 
