FILESYSTEM CONSTELLATION — NATIVE LINUX BUILD

This build is a REAL native Linux desktop application. It does NOT open a browser,
web page, Electron, or localhost server.

Binary: filesystem-constellation
Architecture: x86-64
GUI: X11 (works on normal X11 desktops and on Wayland desktops that provide XWayland)
Dependencies at runtime: libc, libstdc++, libm, libX11, libxcb, libXau, libXdmcp

RUN:
  ./filesystem-constellation

INSTALL:
  ./install.sh
  or
  ./install.sh /usr/local

START LOCATION:
  $HOME

CONTROLS:
  Mouse wheel    Zoom
  Left drag      Orbit 3D view
  Click node     Select
  Enter          Enter selected directory / open selected file
  Backspace      Parent directory
  Home           Return to $HOME
  Esc            Quit

RING SYSTEM:
  Every directory calculates its own radius from its child count.
  Radius uses minimum spacing + object padding + label padding and is clamped
  between configurable minimum and maximum values in src/main.cpp.
  Multiple nested rings can have completely different sizes.
  Seven directory depths are supported in the prototype.
  Drawing is capped per ring to keep huge directories responsive.

This is intentionally a native prototype rather than the previous browser-based build.
