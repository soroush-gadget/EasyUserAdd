# EasyUserAdd - Interactive User Creation Script

**EasyUserAdd** is a powerful yet simple bash script that allows administrators to create new users with customizable options, including home directory, shell, user comment, and password expiry settings. It also provides a step-by-step interactive setup, making it easy to configure users according to system defaults or custom preferences.

## 📥 Installation

To install `EasyUserAdd`, follow these steps:

1. Open your terminal.
2. Run the following command to download the script from GitHub and install it:

   ```bash
   curl -sSL https://https://github.com/soroush-gadget/EasyUserAdd/blob/main/myuseradd -o /usr/local/bin/myuseradd
   sudo chmod +x /usr/local/bin/myuseradd
   ```

3. After installation, you can verify that the script is successfully installed by running:

   ```bash
   myuseradd
   ```

## 🚀 How to Use

Once installed, you can easily create a new user by running the following command:


### Example:
```bash
========================================
🚀 MyUserAdd - Interactive User Creator
========================================

👤Write the USERNAME👇

👤 Enter the username: soroush

🏠 Home directory (Default:)

🏠 Home directory (Press Enter for default: /home/soroush):

👥 Available groups:

sudo                 IT
WEB                  ACCOUNTING
DEVELOPER            root

📌 Primary group (Press Enter for default: soroush): IT

➕ Secondary groups (Use (,) to separate or press Enter to skip): WEB,DEVELOPER,sudo
🖥️ Available shells:

/bin/sh         /usr/bin/bash   /usr/bin/rbash  /bin/dash
/bin/bash       /bin/rbash      /usr/bin/sh     /usr/bin/dash
💻 Preferred shell (Press Enter for default: /bin/bash):

💬 Enter a comment for the user (or press Enter to skip): soroush gadget

🗓️ Set password expiry (e.g., 2025-12-31, or press Enter to skip): 2025-06-01

🚀 Creating user with command:

useradd -m -d /home/soroush -s /bin/bash -g IT -G WEB,DEVELOPER,sudo -c "soroush gadget" soroush

🔑 Setting password for soroush...

New password: (write PASSWORD)
Retype new password: (rewrite PASSWORD)
passwd: password updated successfully

✅ User soroush created successfully!
```

This command will:
- Create a user named `testuser` with a user ID of `1001`.
- Assign the user to the `users` group.
- Set a home directory at `/home/testuser`.
- Use `/bin/bash` as the default shell.
- Set the comment as `'Test User'`.

## 🛠️ Features

- **Interactive Setup:** The script will prompt you with clear and easy-to-understand questions.
- **Customization:** Customize the home directory, primary and secondary groups, user shell, and more.
- **Password Expiry Settings:** Optionally, set the password expiry, minimum/maximum days, and warning age.
- **Automatic Group and Shell Suggestions:** The script fetches available groups and shells from the system and displays them for selection.

## 🚨 Error Handling

- If the user already exists, an error will be displayed, and the script will exit.
- If you forget to run the script with `sudo`, the script will remind you to run it as an administrator.

## ⚙️ Default Settings

- **Home Directory:** By default, the home directory is set based on `/etc/default/useradd` but can be customized.
- **Shell:** Default shell is fetched from `/etc/default/useradd` or `/etc/shells`.
- **Password Expiry:** By default, the script will use settings from `/etc/login.defs` for password expiry, minimum and maximum days, and warning age.

## 🏷️ License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 📣 Support

If you encounter any issues or have questions, feel free to open an issue on GitHub or contact me at `your-email@example.com`.

---

### Installation Notes:

1. **Make sure to have root privileges**: The script needs to be executed with `sudo` for creating users and modifying system files.
2. **Group and Shell Availability**: The script auto-fetches available groups and shells from your system, making the process more efficient and less error-prone.

## 🌟 Enjoy using EasyUserAdd for a smooth user creation process!

