# Player Screen for iOS Mobile App

## Project Overview

This project implements a portrait-oriented player screen inspired by the Apple TV iOS app. Built using SwiftUI and AVKit, the player screen provides a clean, modern, and fully responsive video playback experience. The interface adapts seamlessly to both portrait and landscape modes, mimicking the behavior and visual style of the Apple TV app.

## Features Implemented

### 1. Video Playback

- **Framework:** AVKit
- **Controls:** Built-in AVPlayer controls including play, pause, forward, rewind, and seek bar.
- **Fullscreen Support:** Automatically switches to fullscreen when rotating to landscape and shrinks back in portrait mode.

### 2. Dynamic Layout

- **Responsive Design:** Uses SwiftUI’s environment properties and device orientation to adjust layout.
- **Automatic Fullscreen:** Video player automatically expands to full screen in landscape.
- **Info Section Visibility:** Video details only show in portrait mode and hide completely in fullscreen landscape mode.

### 3. Metadata Display

- **Video Title:** Displayed in the info section in portrait mode.
- **Episode Name:** Shows relevant episode details.
- **Description:** A brief overview of the video content.

### 4. Visual Design

- **Blur Background:** Apple-style system material dark blur behind the info section.
- **Rounded Corners:** The video player has rounded corners in portrait and none in fullscreen landscape.
- **Shadows:** Subtle shadows for a sleek, polished look.


## How to Use

- **Portrait Mode:**
  - Video plays in a smaller frame with rounded corners.
  - Metadata (title, episode, description) is displayed below the video.
- **Landscape Mode:**
  - Video automatically expands to fullscreen.
  - Metadata section disappears to create an immersive viewing experience.
- **Rotation:**
  - Rotate the device or simulator to switch between portrait and landscape modes.


## Demo Video



https://github.com/user-attachments/assets/8fab1ea6-1d00-459b-be2c-ce23b58e8312

