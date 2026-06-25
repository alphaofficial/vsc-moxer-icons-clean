# Moxer Icons Clean

> **Note**: This is a "fork" of the [Moxer Icons](https://marketplace.visualstudio.com/items?itemName=Equinusocio.moxer-icons) extension. I audited the code and didn't find any malicious code. Since the original repository was hidden, I decided to make my own "fork" (thankfully, I had a local copy). **This extension doesn't contain any JS code.**

<p align="center"><br><strong>Moxer Icons Clean</strong> provides file icons for Visual Studio Code</p>
<br><br>

---

## Install

### Install from releases (when available)

```bash
curl -fL https://github.com/Moltenship/moxer-icons-fork/releases/latest/download/moxer-icons-fork.vsix -o /tmp/moxer-icons-fork.vsix \
  && code --install-extension /tmp/moxer-icons-fork.vsix
```

### Build and install from source

```bash
git clone https://github.com/Moltenship/moxer-icons-fork.git
cd moxer-icons-fork
npm install
npm run compile
npx @vscode/vsce package
code --install-extension moxer-icons-fork-*.vsix
```

Or use the install script:

```bash
chmod +x install.sh && ./install.sh
```

### Activate theme

1. Press `Ctrl + Shift + P` (or `Cmd + Shift + P` on macOS) to open Command Palette
2. Type `theme` and select **Preferences: File Icon Theme**
3. Choose **Moxer Icons Clean**

---

<p align="center"><a href="http://www.apache.org/licenses/LICENSE-2.0"><img src="https://img.shields.io/badge/License-Apache_2.0-5E81AC.svg?style=flat-square"/></a></p>
