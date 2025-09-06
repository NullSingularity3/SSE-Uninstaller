# SSE-Uninstaller

A simple Windows batch tool to uninstall Skyrim Special Edition via Steam and clean up leftover files, user saves, and AppData folders.

## How to Run

Clone the repository. 

```sh
git clone https://github.com/NullSingularity3/SSE-Uninstaller.git
```

The script will ask you for the path to `steam.exe` (default is `C:\Program Files (x86)\Steam\steam.exe`). Press Enter to accept the default or paste a custom path.

There are two ways to run the script:

1. **Double-click the `.bat` file** in Windows Explorer.  
- The script will open a console window, run all cleanup steps, and wait for you to press Enter at the end.

2. **Run from Command Prompt**:  
- Open Command Prompt (`Win + R`, type `cmd`, press Enter).  
- Navigate to the folder containing the script:
```cmd
cd "C:\path\to\script"
deleteSkyrimSpecialEdition.bat
```
- Follow the on-screen instructions.
