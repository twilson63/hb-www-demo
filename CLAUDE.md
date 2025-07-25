# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a Hyperbeam/AOS demo that shows how to load Lua files into a Hyperbeam process to provide custom web pages. The application demonstrates dynamic HTML generation with an animated elephant marquee.

## Architecture

The application consists of three main files:
- `now.html.lua`: Main HTML template that sets up the page structure and links to CSS/JS resources
- `app.css.lua`: CSS styles for the elephant marquee animation and visual effects
- `app.js.lua`: JavaScript that dynamically creates SVG elephants and manages the marquee animation

### Key Components

1. **Lua State Management**: Each file uses `State` objects to define content-type headers and body content
2. **Dynamic Resource Loading**: HTML references CSS and JS through relative paths (`now/app.css`, `now/app.js`)
3. **SVG Animation**: Elephants are created as inline SVG elements with CSS animations for movement

## Development Commands

### Setup AOS Console
```bash
npm i -g https://preview_ao.arweave.net
```

### Create Hyper-AOS-Lite Process
```bash
export AOS_MODULE="eESTT8y54b_KWRvVwwQVib-Oal-eLalREfrdaphjYuA"
aos --mainnet http://localhost:8734 _mywebdemo
```

### Load Web Artifacts
Once in the AOS console:
```
.load app.css.lua
.load app.js.lua
.load now.html.lua
```

## Development Notes

- The application is served by a Hyperbeam node that interprets the loaded Lua files
- Resources are accessed via the `now/` path prefix in the HTML
- The marquee animation uses CSS transforms for continuous scrolling
- JavaScript adds interactivity (speed changes on hover) and dynamically populates elephants

## References

### GitHub Repositories
- Hyperbeam: https://github.com/permaweb/hyperbeam
- AOS: https://github.com/permaweb/aos

### Documentation
- Hyperbeam Documentation: https://hyperbeam.ar.io
- AO Cookbook: https://cookbook_ao.ar.io