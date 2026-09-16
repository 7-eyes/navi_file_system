# Filesystem Constellation — Native Linux

A standalone native X11 Linux file manager. **It does not use a browser or web UI.**

## Run

```bash
./filesystem-constellation
```

It starts in `$HOME`.

## Controls

- Mouse wheel: zoom
- Drag with left mouse button away from a node: orbit the 3D view
- Click a file/directory node: select
- Enter: open selected directory, or launch selected file with the normal Linux application
- Backspace: parent directory
- Home: return to `$HOME`
- Esc: quit

## Ring layout

Every directory independently calculates its ring radius from its child count, minimum spacing, object padding, label padding, and min/max radius. Different directory levels therefore have different radii.

The prototype displays up to seven nested directory levels automatically and limits very large child lists during drawing so a huge directory does not destroy frame rate.

## Build

Requires X11 development headers and a C++ compiler:

```bash
g++ -std=c++17 -O2 -o filesystem-constellation src/main.cpp -lX11
```
