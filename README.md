# Hyper-HTML Demo: Elephant Parade

A demonstration of serving custom web pages through Hyperbeam using AOS (Arweave Operating System). This project shows how to create an animated elephant marquee that runs entirely within a Hyperbeam process.

## What is this?

This demo creates a web page with animated elephants marching across the screen. It demonstrates how to:
- Load Lua-based web assets into an AOS process
- Serve HTML, CSS, and JavaScript through Hyperbeam
- Create interactive web experiences on the Arweave permaweb

## Prerequisites

- Node.js and npm installed
- Access to an AOS gateway (default: http://localhost:8734)

## Quick Start

### 1. Install AOS Console

```bash
npm i -g https://preview_ao.arweave.net
```

### 2. Create a Hyperbeam Process

```bash
aos --url http://localhost:8734 _mywebdemo
```

### 3. Load the Web Assets

Once you're in the AOS console, load the three files in order:

```
.load app.css.lua
.load app.js.lua
.load now.html.lua
```

### 4. View Your Demo

Your Hyperbeam process is now serving the elephant parade! The page will be accessible through the Hyperbeam node.

## How It Works

1. **app.css.lua** - Defines the styles for the animated elephants, including:
   - Gradient background
   - Marquee animation
   - Elephant colors and movement
   - Cloud decorations

2. **app.js.lua** - Creates the interactive elements:
   - Dynamically generates SVG elephants
   - Manages the marquee animation
   - Adds hover effects (speeds up on mouse hover)

3. **now.html.lua** - The main HTML structure that:
   - Links to the CSS and JavaScript resources
   - Sets up the page layout
   - Provides the container for the elephant parade

## File Structure

```
hyper-html/
├── app.css.lua      # Styles and animations
├── app.js.lua       # JavaScript interactivity
├── now.html.lua     # Main HTML template
├── CLAUDE.md        # Development guidance
└── README.md        # This file
```

## Customization

Feel free to modify:
- **Elephant colors**: Edit the CSS in `app.css.lua`
- **Animation speed**: Adjust the `animation-duration` values
- **Number of elephants**: Change `numberOfElephants` in `app.js.lua`
- **SVG design**: Modify the `elephantSVG` template in `app.js.lua`

## Learn More

- [Hyperbeam Documentation](https://hyperbeam.ar.io)
- [AO Cookbook](https://cookbook_ao.ar.io)
- [Hyperbeam GitHub](https://github.com/permaweb/hyperbeam)
- [AOS GitHub](https://github.com/permaweb/aos)

## Troubleshooting

- **Cannot connect to AOS gateway**: Ensure your gateway is running at the specified URL
- **Files not loading**: Load the files in the correct order (CSS, JS, then HTML)
- **Page not displaying**: Check that all three files loaded successfully with `.editor`

Happy elephant parading! 🐘
