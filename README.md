<h1 align="center">
  <br>
  <a href="https://github.com/OliverParoczai/nextcloud-unroundedcorners"><img src="https://raw.githubusercontent.com/OliverParoczai/nextcloud-unroundedcorners/master/differences.png" alt="nextcloud-unroundedcorners logo" width="200"></a>
  <br>nextcloud-unroundedcorners
</h1>
<h3 align="center">
  A Nextcloud app that restores the corners of buttons and widgets to their original looks by unrounding them.
</h3>

# Introduction

I made this application as I didn't like how the new Nextcloud design looked. I started using the Custom CSS app to change it but after a few more modifications and asks from friends I felt the need to make it into an application for it to be easy to update, and for others to find it easier.

# Technology

It is a simple app that only does one thing: it injects the bundled-in CSS code into Nextcloud, and the CSS is what matters.

For the CSS we used variables that automatically changed all "pill"-style buttons "border-radius" value to a less rounded one, and some code to fix the ones that became broken in the process.

# Contributors

- [@OliverParoczai](https://github.com/OliverParoczai)
- [@karlprieb](https://github.com/karlprieb)

# Usage with Custom CSS

To be updated at a later time

# Packaging using the buildscript

There is a bash script for packaging the application included in the 'code' directory. It makes a tar file using the required file structure, and can optionally sign it.

The script doesn't require root permissions, just a few packages: ```git, xmlstarlet, tar```
