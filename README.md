**GST Offline Tool for Linux (GSTR1-Offline)**
A standalone, portable Linux port of the GST Offline Tool. This project packages the Node.js backend, Express server, and frontend assets into a single AppImage, allowing for a "zero-install" experience on modern Linux distributions like Zorin OS 18, Ubuntu 24.04, and Linux Mint.
**Features**
* Portable AppImage: No need to install Node.js, npm, or any dependencies manually.
* Automated Startup: Automatically launches a local server on port 3010 and opens your default browser.
* Optimized for Linux: Fixed internal pathing issues and dependency bundling (Jade/Pug) for consistent performance in a virtual filesystem.
* Native Integration: Includes high-quality icons and is fully compatible with AppImageLauncher.
**Installation & Usage**
1. Download
Download the latest .AppImage file from the Releases page.
2. Make it Executable
Open your terminal in the download folder and run:
chmod +x GST_Offline_Tool-x86_64.AppImage

Alternatively, right-click the file > Properties > Permissions > "Allow executing file as program".
3. Run
Double-click the file or run it via terminal:
./GST_Offline_Tool-x86_64.AppImage

⚠️ Troubleshooting (Ubuntu 24.04 / Zorin OS 18)
Newer Linux distributions have moved to FUSE 3, while most AppImages require FUSE 2. If the app fails to launch, install the following compatibility library:
sudo apt update
sudo apt install libfuse2t64

 Technical Architecture
This project was built using a multi-stage compilation process:
1. Backend: Node.js / Express / Jade.
2. Bundling: Compiled into a Linux-native binary using pkg to handle the /snapshot virtual filesystem.
3. Packaging: Compressed into a Type 2 AppImage using appimagetool.
Development Build
If you wish to build the AppImage yourself:
# Clone the repo
git clone [https://github.com/sainandanbose3034/gst-offline-tool-linux.git](https://github.com/sainandanbose3034/gst-offline-tool-linux.git)
cd gst-offline-tool-linux

# Install & Build
npm install
npm run build

# Use appimagetool to squash the GST_Tool.AppDir
ARCH=x86_64 ./appimagetool-x86_64.AppImage GST_Tool.AppDir

 Author
Sainandan Bose
B.Tech Student | Open Source Enthusiast
GitHub Profile
Disclaimer: This is a community-driven Linux port and is not an official government release. Use for offline GST preparation only.
