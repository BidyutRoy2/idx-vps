# 🚀 Google IDX VM Setup Guide

---

## 🖥️ 1. Installing VM in Google IDX

### ▶️ Google IDX: [HERE](https://idx.google.com/)

1. Sign up on Google IDX.
2. Create a new workspace using this repository (**Do NOT change the repo name**):

### ▶️ Enter Repository URL
```
https://github.com/BidyutRoy2/idx-vps.git
```

### Open Terminal & 

### ▶️ Fix Error Enter Dev Code
````
{ pkgs, ... }: {
  channel = "stable-24.05";

  packages = with pkgs; [
    unzip
    openssh
    git
    qemu_kvm
    sudo
    cdrkit
    cloud-utils
    qemu
  ];

  env = {
    EDITOR = "nano";
  };

  idx = {
    extensions = [
      "Dart-Code.flutter"
      "Dart-Code.dart-code"
    ];

    workspace = {
      onCreate = { };
      onStart = { };
    };

    previews = {
      enable = false;
    };
  };
}
````

### ▶️ VM Setup Command

```bash
bash <(curl -fsSL https://raw.githubusercontent.com/BidyutRoy2/idx-vps/refs/heads/main/vps.sh)
```
- Create New VM & Ubuntu 22.04
- After Installsation Complete
- Start Your VM

### 🐦 2. Installing Pterodactyl Panel in Google IDX

Run the installer script:

```bash
bash <(curl -s https://ptero.jishnu.fun)
```

---

### ☁️ 3. Cloudflare Setup

Sign up on Cloudflare for DNS & SSL setup:
[https://dash.cloudflare.com/](https://dash.cloudflare.com/)

---

### 🎉 Setup Completed Successfully!

Your Google IDX VM + Pterodactyl Panel is now installed.

---
