Nicer New Gmail Theme
=====================

This is a theme for the new (2018) Gmail theme to remove a lot of the
visual inconsistencies and overuse of whitespace, helping to create a
clean visual style that more closely mirrors the rest of Google's product
suite. Actions are all aligned, tabs are more well-defined, and colors are
consistent.

![Screenshot](https://userstyles.org/style_screenshots/159843_after.png)


Prerequisites
-------------

You must be using the new **2018 version of Gmail** (currently beta as of this
writing) for this to work. If the style seems to break Gmail, you're likely not
running the new version.

You should also select the **Light theme** (usually the default) from Gmail's
theme selector to ensure some standard base styles.


Installing the Theme
--------------------

The theme comes in two forms:

* A [Stylish theme](https://userstyles.org/styles/159843/nicer-new-gmail)
  that you can apply in your browser, with customizable color options.

  You can also download `stylish.css` from the
  [latest release](https://github.com/chipx86/nicer-new-gmail/releases) and
  use it in your alternative browser extension of choice.

* A [Kiwi for Gmail](https://www.kiwiforgmail.com/) theme, which can be
  applied by downloading and running `apply-kiwi-gmail-theme.sh` from the
  [latest release](https://github.com/chipx86/nicer-new-gmail/releases).


Modifying the Theme
-------------------

If you want to make your own modifications, you can edit the file in
`src/theme.css` and then re-generate using:

    $ make

The Stylish theme and Kiwi script will be found in `dist/`.
