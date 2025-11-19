# 🚀 Zoom Virtual Background Exporter

*A simple PowerShell utility to back up and extract your Zoom virtual
background images.*

------------------------------------------------------------------------

## 📘 Overview

Zoom stores your custom virtual backgrounds in a hidden AppData
directory, making them frustrating to access.\
This PowerShell script automatically:

-   🛠️ Creates your destination folder if it doesn't exist\
-   🖼️ Copies each background image\
-   🔄 Renames each file to a readable `.png` format\
-   ✅ Provides progress and error messages

Perfect for backing up, organizing, or editing your favorite Zoom
backgrounds!

------------------------------------------------------------------------

## ⚙️ Configuration

Before running, update these lines according to your setup:

``` powershell
$source = "C:\Users\YourUser\AppData\Roaming\Zoom\data\VirtualBkgnd_Default"
$destination = "C:\Your\Backup\Folder\\"
```

💡 *Tip:* To find your exact Zoom folder, open File Explorer and
navigate to:\
`C:\Users\YourUser\AppData\Roaming\Zoom\data\VirtualBkgnd_Default`

------------------------------------------------------------------------

## ▶️ How to Use

1.  **Save the script** as `Zoom-extract.ps1`\

2.  **Open PowerShell**

3.  Drag and drop the Script into the window  

4.  *(Optional)* If you get a script execution warning, add:

    ``` powershell
    Set-ExecutionPolicy -Scope CurrentUser RemoteSigned
    ```

5.  **Run the script**:

    ``` powershell
    .\\Export-ZoomBackgrounds.ps1
    ```

6.  🎉 Your exported images will appear in your destination folder.
