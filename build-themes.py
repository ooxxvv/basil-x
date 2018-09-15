#!/usr/bin/env python3

import os

VARIATIONS = ["Basil-X",]

DEST = './usr_share_themes'

curdir = os.getcwd()

print("Updating Gtk3 assets")
os.chdir("gtk-3.0/")
os.system("./parse-sass.sh")
os.system("./render-assets.sh")
print("Gtk3 assets updated")

os.chdir(curdir)

print("Updating Gtk2 assets")
os.chdir("gtk-2.0/")
os.system("./render-assets.sh")
print("Gtk2 assets updated")

os.chdir(curdir)

if __name__ == '__main__':
    print("Building themes")
    for variation in VARIATIONS:
        dest_folder = os.path.join(DEST, variation)
        if variation == "Basil-X":
            print("    Building Mint-Y-Mist")
            os.system("mkdir -p %s" % dest_folder)
            os.system("cp index.theme %s" % os.path.join(dest_folder, "index.theme"))
            # Gtk2
            version_folder = os.path.join(dest_folder, "gtk-2.0")
            os.system("mkdir -p %s" % version_folder)
            os.system("rm -rf %s" % os.path.join(version_folder, "assets"))
            os.system("cp -R gtk-2.0/assets %s" % version_folder)
            os.system("cp -R gtk-2.0/menubar-toolbar %s" % version_folder)
            os.system("cp gtk-2.0/*.rc %s" % version_folder)
            os.system("cp gtk-2.0/gtkrc %s" % os.path.join(version_folder, "gtkrc"))
            # Gtk3
            version_folder = os.path.join(dest_folder, "gtk-3.0")
            os.system("mkdir -p %s" % version_folder)
            os.system("cp -R gtk-3.0/assets %s" % version_folder)
            os.system("cp gtk-3.0/gtk.css %s" % os.path.join(version_folder, "gtk.css"))
            os.system("cp gtk-3.0/thumbnail.png %s" % version_folder)
            # Metacity
            os.system("cp -R metacity-1 %s" % dest_folder)
            os.system("rm %s/*-dark*" % (os.path.join(dest_folder, "metacity-1")))
            # XFCE-Notify
            os.system("cp -R xfce-notify-4.0 %s" % dest_folder)
            # XFWM
            os.system("cp -R xfwm4 %s" % dest_folder)

