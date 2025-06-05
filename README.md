# Automatic Plant Watering System

An automated plant watering system that monitors soil moisture levels and automatically waters plants when needed. This system is built using MATLAB and Arduino.

## Overview

This system uses a soil moisture sensor connected to an Arduino Uno board to continuously monitor the moisture levels of your plants. When the soil becomes too dry (voltage reading ≥ 2.8V), the system automatically activates a water pump to provide water to the plants.

## Hardware Requirements

- Arduino Uno board
- Soil moisture sensor
- Water pump
- Relay module (for controlling the water pump)
- Connecting wires
- USB cable for Arduino

## Software Requirements

- MATLAB with Arduino Support Package
- Arduino IDE (for initial setup)

## Setup Instructions

1. Connect the hardware components:
   - Connect the soil moisture sensor to analog pin A1
   - Connect the water pump control relay to digital pin D2
   - Connect the Arduino to your computer via USB

2. Install required software:
   - Install MATLAB with Arduino Support Package
   - Install Arduino IDE and upload the necessary firmware

3. Configure the system:
   - Update the COM port in the code to match your Arduino's port
   - Adjust the moisture threshold (2.8V) if needed for your specific plants

## Usage

1. Run the `Automatic_Plant_Watering_System.m` script in MATLAB
2. The system will:
   - Continuously monitor soil moisture levels
   - Display real-time moisture readings
   - Automatically activate the water pump when soil is dry
   - Show a live plot of moisture levels over time

## Features

- Real-time soil moisture monitoring
- Automatic watering based on moisture thresholds
- Live graphical display of moisture levels
- Continuous operation with automatic control

## Troubleshooting

- If the system doesn't detect the Arduino, check the COM port number
- Ensure all connections are secure and properly wired
- Verify that the soil moisture sensor is properly inserted into the soil
- Check that the water pump is receiving power when activated
