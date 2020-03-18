# [mod] bugslive
This (mobs_redo) branch is based on the mobs_redo version created by
TenPlus1
([p=173417#p173417](https://forum.minetest.org/viewtopic.php?f=9&t=11174&hilit=bugslive#p173417)
Fri Mar 20, 2015 15:04).


## Differences in Poikilos fork
- The model is a b3d file instead of x.
- There is a blend file in the src directory, created by importing an
  obj+mtl exported from the x file using
  [poikilos/b3view](https://github.com/poikilos/b3view) (this only
  exports on frame of an animated file, which is fine for the bug since
  it has no animation).
- There are separate readme.md and license.txt files with corrections.


## License
- See license.txt
- Copyright (c) 2014 Krupnov Pavel, 2015 TenPlus1, 2020 Jake "Poikilos" Gustafson
