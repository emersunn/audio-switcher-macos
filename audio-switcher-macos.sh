#!/bin/bash

# Function to display a numbered list of devices
display_devices() {
  devices=("${!1}")
  for i in "${!devices[@]}"; do
    echo "$((i+1)). ${devices[i]}"
  done
}

# Get available audio output devices
IFS=$'\n' output_devices=($(SwitchAudioSource -a -t output))

# Prompt user to choose output device
echo "Available output devices:"
display_devices "output_devices[@]"
echo "Enter the number of the output device:"
read output_device_index

# Set chosen output device and volume to 50%
SwitchAudioSource -s "${output_devices[$((output_device_index-1))]}" -t output
osascript -e "set volume output volume 50"

# Get available audio input devices
IFS=$'\n' input_devices=($(SwitchAudioSource -a -t input))

# Prompt user to choose input device
echo "Available input devices:"
display_devices "input_devices[@]"
echo "Enter the number of the input device:"
read input_device_index

# Set chosen input device
SwitchAudioSource -s "${input_devices[$((input_device_index-1))]}" -t input

echo "Audio devices switched successfully!"
