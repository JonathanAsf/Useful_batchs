# Network Configuration Reset Script

This batch script is used to restart and reset network configurations on a Windows system. It executes a series of commands to release and renew IP addresses, clear the DNS cache, and reset network settings.

## Executed Commands

1. **ipconfig /release**  
   Releases the current IP address of the network adapter.

2. **ipconfig /flushdns**  
   Clears the DNS cache, removing stored entries that may be outdated.

3. **ipconfig /renew**  
   Renews the IP address for the network adapter.

4. **ipconfig /registerdns**  
   Registers the computer's name with the DNS server, updating the DNS record.

5. **nbtstat -R**  
   Purges the name cache and reloads the names from the table.

6. **nbtstat -RR**  
   Sends a name query to the WINS server, updating the name table.

7. **netsh int ip reset**  
   Resets the IP protocol settings to default.

8. **netsh winsock reset**  
   Resets the Winsock catalog to default, fixing network connectivity issues.

## How to Use

1. Open Notepad or any text editor.
2. Copy and paste the code above into the editor.
3. Save the file with a `.bat` extension, for example, `reset_network.bat`.
4. Right-click the file and choose "Run as administrator."

**Note:** It is recommended to run this script with administrator privileges to ensure all commands execute correctly.

## Remarks

- This script can help resolve common network connectivity issues.
- It’s always a good idea to back up your current settings before running scripts that make significant changes.
