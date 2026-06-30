# Moxer Icons Clean

> **Note**: This is a "fork" of the [Moxer Icons](https://marketplace.visualstudio.com/items?itemName=Equinusocio.moxer-icons) extension. I audited the code and didn't find any malicious code. Since the original repository was hidden, I decided to make my own "fork" (thankfully, I had a local copy). **This extension doesn't contain any JS code.**

<p align="center"><br><strong>Moxer Icons Clean</strong> provides file icons for Visual Studio Code</p>
<br><br>

---

## Install

### Install from release

```bash
curl -fL https://github.com/alphaofficial/vsc-moxer-icons-clean/releases/latest/download/moxer-icons-clean.vsix -o /tmp/moxer-icons-clean.vsix \
  && code --install-extension /tmp/moxer-icons-clean.vsix
```

### Build and install from source

```bash
git clone https://github.com/alphaofficial/vsc-moxer-icons-clean.git
cd vsc-moxer-icons-clean
npm install
npm run package
code --install-extension moxer-icons-clean.vsix
```

### Activate theme

1. Press `Ctrl + Shift + P` (or `Cmd + Shift + P` on macOS) to open Command Palette
2. Type `theme` and select **Preferences: File Icon Theme**
3. Choose **Moxer Icons Clean**

---

<p align="center"><a href="https://opensource.org/licenses/MIT"><img src="https://img.shields.io/badge/License-MIT-5E81AC.svg?style=flat-square"/></a></p>
