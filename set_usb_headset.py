#!/usr/bin/env python3
import subprocess
import sys
from termcolor import colored
try:
    raw_input_device = subprocess.check_output(
      "pacmd list-sources | grep input.usb", shell=True)
    raw_output_device = subprocess.check_output(
      "pacmd list-sinks | grep output.usb", shell=True)
except subprocess.CalledProcessError:
    print(colored("NO USB headset detected", 'blue'))
    sys.exit()
input_device = raw_input_device.decode('utf-8').strip().replace(
  'name: <', '', 1).rstrip('>')
output_device = raw_output_device.decode('utf-8').strip().replace(
  'name: <', '', 1).rstrip('>')
try:
    subprocess.call(["pacmd", "set-default-source", input_device])
    subprocess.call(["pacmd", "set-default-sink", output_device])
    print(colored("Set USB headset", 'green'))
except subprocess.CalledProcessError:
    print(colored("Unable to set USB headset as defualt", 'red'))
