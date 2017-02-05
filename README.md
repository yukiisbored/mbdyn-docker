# MBDyn Docker Image

This is a docker image for [MBDyn][mbdyn web]. This docker image contains a
compiled, ready-to-use mbdyn. The purpose of this image is to use MBDyn without
the hassle of compilation and for people who are running a distro that doesn't
have all of the required math libraries.

## How to use it?
You can use this docker image to run mbdyn on your code in the working directory,
like this:

`docker run --volume=$(pwd):/work --workdir=/work yukiisbored/mbdyn mbdyn <file>`

[mbdyn web]: https://www.mbdyn.org/
