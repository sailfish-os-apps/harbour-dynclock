#!/bin/bash
#
#    DynClock - Sailfish OS clock icon will show you the current time.
#    Copyright (C) 2015-2016  fravaccaro <fravaccaro90@gmail.com>
#
#    This program is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You should have received a copy of the GNU General Public License
#    along with this program.  If not, see <http://www.gnu.org/licenses/>.
#

cp /usr/share/harbour-dynclock/icon-launcher-clock.png /usr/share/themes/sailfish-default/meegotouch/z1.0/icons/icon-launcher-clock.png
rm -rf /usr/share/applications/jolla-clock.desktop && touch /usr/share/applications/jolla-clock.desktop
/usr/bin/desktop-file-install /usr/share/applications/jolla-clock.desktop
echo '[Desktop Entry]
Type=Application
Name=Clock
X-MeeGo-Logical-Id=clock-ap-name
X-MeeGo-Translation-Catalog=clock
Icon=icon-launcher-clock
Exec=invoker -s --type=silica-qt5 /usr/bin/jolla-clock
Comment=Jolla clock
X-Maemo-Service=com.jolla.clock
X-Maemo-Object-Path=/
X-Maemo-Method=com.jolla.clock.activateWindow
X-Desktop-File-Install-Version=0.23' > /usr/share/applications/jolla-clock.desktop
/usr/bin/desktop-file-install /usr/share/applications/jolla-clock.desktop --set-icon=icon-launcher-clock
exit 0
