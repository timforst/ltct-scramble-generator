# LTCT Custom Scramble Generator

This application generates scrambles with parity, no cycle breaks in corners and exactly one corner twist. The corner twist and the last target can be selected to create scrambles that use one specific LTCT.

# Usage

## Setup

```bash
mkdir build
cd build
cmake ..
make
```

## Generating Scrambles

```bash
./generate_scrambles <target> <twist (defaults to no twist, so just parity)> <number_of_scrambles (defaults to 10)>
```

`target` and `twist` use the speffz numbering convention starting with 0, e.g. UBL and UB (A) would be 0, BRD and BR (T) would be 19. The corner twist is defined by the position of the U/D sticker.



# License

This software is distributed on GPLv3.0, more information available in [LICENSE.md](LICENSE.md).
