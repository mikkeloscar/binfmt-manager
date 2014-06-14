# binfmt-manager

Register/unregister qemu-static executables with binfmt_misc

## Dependencies

A kernel with `BINFMT_MISC=y` and `qemu-user-static`.

## Install

`# make install` or get a `PKGBUILD` from [here](https://github.com/mikkeloscar/packages/tree/master/binfmt-manager).

## Usage

Register `qemu-arm-static` and `qemu-armeb-static` with `binfmt_misc`.

```
# ./binfmt_manager register arm,armeb
```

Unregister `qemu-arm-static` again.

```
# ./binfmt_manager unregister arm
```

Register all

```
# ./binfmt_manager register all
```

#### systemd

Register on boot with systemd.

```
# systemctl enable binfmt-manager@arm.service
```

## LICENSE

Copyright (C) 2014  Mikkel Oscar Lyderik Larsen

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
