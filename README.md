# Audio Switcher for macOS

This script allows you to easily switch between available audio input and output devices on macOS. It prompts you to select a device from a numbered list of devices and sets the output device's volume to 50% by default.

## Prerequisites

This script requires `SwitchAudioSource`, a command-line utility for managing audio devices on macOS. You can install `SwitchAudioSource` using [Homebrew](https://brew.sh/), a package manager for macOS.

### Installing Homebrew

If you don't have Homebrew installed, you can install it by following the instructions on the [Homebrew website](https://brew.sh/).

### Installing SwitchAudioSource

Once you have Homebrew installed, open a terminal and run the following command to install `SwitchAudioSource`:

```bash
brew install switchaudio-osx
```

## Usage

1. Clone this repository or download the `switch_audio.sh` script.

```bash
git clone https://github.com/emersunn/audio-switcher-macos.git
cd audio-switcher-macos
```

2. Make the script executable:

```bash
chmod +x switch_audio.sh
```

3. Run the script:

```bash
./switch_audio.sh
```

The script will display a numbered list of available output and input devices. You can choose a device by entering its number. The output device's volume will be set to 50% by default.
```

Replace `your-github-username` with your actual GitHub username in the `git clone` command. Save this content as `README.md` in the same directory as your `switch_audio.sh` script. When you push the repository to GitHub, the `README.md` file will be displayed on the repository's main page, providing instructions for installing and using the script.
