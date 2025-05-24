# Fedora image

This repository is used to host setup scripts for classroom Fedora image in computer lab RC3 at Department of Mathematics and Informatics, Faculty of Science, University of Novi Sad.

My goal with this project is to have a reliable, robust and automated maintanance workflow for the classroom operating system installation.

## Image variants

In order to ensure reliable service, I'm not aiming for the latest version possible at all times. Rather, I'm using the image which is the latest image at the start of each semester.

At Faculty of Science, winter semester (first in the school year) starts at the beginning of October. The summer semester (second in the school year) starts sometime in February.

Since Fedora releases happen twice a year around April-March and October-November period, depending on the delays, each new release of Fedora happens soon after the semester starts.

That way, each semester Fedora version that is uses is tested in the wild for a number of months before it hits the computer lab.

With that in mind, I've designated a few image variants in order to ease transition between versions:

- `stable` - the latest version at the time when semester starts, which is at that time soon to be previous version,
- `next` - the next version which is to be built and tested before rebased on computer lab machines in order to be tested out,
- `old` - the previous release of Fedora which is not used in the lab.

At any time during the semester, all computers should run `stable` release, `old` release is being built as long as that Fedora verison is receiving updates, and `next` should be run in order to test the stability of the system before running it on computer lab machines.

It is not expected to be any troubles with the `next` release tho, since it's already being tested by the community. This is much more useful to have a image ready and just retag the build from version that `stable` points to, to one that `next` points to.

TODO:

Tag branches by variant name.

Variant specification file which specified Fedora version to be used and additional tags for images.

## Feature integration procedures

### New feature in `stable`

First integrate into `old` if possible then into `next` (this should be possible).

### New feature in `next`

First integrate into `stable` if possible then into `old` if possible.

### New feature in `old`

There should be no new features in `old`. Integrate the directly into `stable`.


