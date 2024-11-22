# bugbounty-recon.sh

Simple overview of use/purpose.

## Description

winpriv.sh is a Bash script designed to automate the download of tools for Windows privilege escalation. 
It connects to a remote server hosting the tools (via a Python HTTP server) and retrieves the specified 
files. The script accepts the server's IP address and port as input arguments, downloads the tools, and 
stores them in a local directory.

---

### Features
- Downloads multiple tools from a remote server.
- Ensures scripts (e.g., `.bat`, `.ps1`) are executable where applicable.
- Handles downloads using `wget` or `curl`, ensuring compatibility across systems.
- Creates a dedicated folder (`win_priv_tools`) to organize the downloaded files.

---

### Prerequisites
- **Bash shell** (Linux/macOS, or Windows Subsystem for Linux).
- Either **wget** or **curl** installed on the client machine.
- A Python HTTP server (or any web server) hosting the required tools.

---

### Dependencies

- jp32.exe
- jp.exe
- plink.exe
- PowerUps.ps1
- putty.exe
- windows_service.c
- winPEAS.bat
- winPEAS.ps1

---

### Installing
```
https://github.com/hiiamyash/bugbounty-recon.sh.git
```
### Executing program

```
chmod +x winprivsetup.sh
./winprivsetup.sh <ip> <port>

```
