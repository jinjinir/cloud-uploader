# Cloud Uploader CLI
This is my take on the [LearnToCloud](https://learntocloud.guide/) Phase 1 Capstone Project. 

The Cloud Uploader CLI tool is a bash script that allows users to quickly upload a file to the specified cloud storage solution, which in my case, is Microsoft Azure. This script provides a simple and seamless upload experience; providing a wrapper to the `az storage upload` command.

## Pre-requisites
I made a blog post in [Hashnode](https://darylgalvez.hashnode.dev/learntocloud-phase-1-capstone-project-clouduploader-cli) detailing the initial setup. I kindly ask you to check the article as I dove into great detail on how to setup the environment to work with Azure.

## Usage
1. Clone the repository:
   ```bash
   git clone https://github.com/jinjinir/cloud-uploader.git
   ```
2. Go into the directory:
   ```bash
   cd cloud-uploader
   ```
3. Choose one of the below on how to execute the script.
   Option 1: Run the script by invoking `bash` and passing the script name, the name of your container storage, and the name of the file you want to upload:
  ```bash
  bash clouduploader <name of the azure container> </path/to/file.ext>
  ```
  Option 2: Make the script executable and pass the script name, the name of your container storage, and the name of the file you want to upload:
  ```bash
chmod +x ./clouduploader
./clouduploader <name of the azure container> </path/to/file.ext>

## What's next?
Pull requests are welcome! Advanced features still missing, such as:
-[] Allowing multiple file uploads at once
-[] Add a progress bar or percentage upload completion
-[] Provide an option to generate and display a shareable link post-upload
-[] Enable file synchronization
-[] Integrate encryption for added security before the upload
