# EasyUserAdd
 Linux. It allows admins to easily set home directories, groups, shells, and password expiry. The interactive interface simplifies user management, and it’s easy to install via GitHub, making it perfect for system admins.

# 🚀 MyUserAdd - Interactive User Creator

MyUserAdd is a shell script that allows you to easily and interactively add new users to your Linux-based systems.

This script will prompt you to enter the necessary details to create a user and automatically create the new user with the specified configuration, including:
- Setting the home directory
- Assigning groups
- Setting the default shell
- Adding a comment for the user
- Setting the password expiry date

### 🛠️ Features:
- Fast and easy setup
- Create a user with custom configurations
- Uses default system settings for convenience
- Set password expiry date
- Add user to different groups

### ⚡ Installation:

To install the script, simply run the following commands in your terminal:

```bash
git clone https://github.com/soroush-gadget/EasyUserAdd.git
cd MyUserAdd
chmod +x myuseradd.sh
sudo ./myuseradd.sh
