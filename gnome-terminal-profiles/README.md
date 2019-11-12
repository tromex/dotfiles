Gnome terminal profiles are dumped and loaded with dconf

To list profiles:

$ dconf list /org/gnome/terminal/legacy/profiles:/

To dump a profile:

$ dconf dump /org/gnome/terminal/legacy/profiles:/:92362b2c-16b3-463b-8423-0a664a937f79/ > 92362b2c-16b3-463b-8423-0a664a937f79

To load a profile:

$ dconf load /org/gnome/terminal/legacy/profiles:/:92362b2c-16b3-463b-8423-0a664a937f79/ < 92362b2c-16b3-463b-8423-0a664a937f79

- first list the profiles and then append the uuid to the list using write
$ dconf list /org/gnome/terminal/legacy/profiles:/
$ dconf write /org/gnome/terminal/legacy/profiles:/list "['16a7bde9-1932-453d-8cb0-d163876f4411', '92362b2c-16b3-463b-8423-0a664a937f79']"
