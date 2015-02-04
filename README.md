CSS-only implementations of the Scandinavian countries’ national flags.

## Backstory
Back from 2015’s [Mönki Gras](http://monkigras.com) conference, its 
_‘Nordic Craft Culture and Tech’_ theme resonated with me. After a couple of 
days of those ever-present flags with the Scandinavian cross, I think I fell 
in love with its simplicity and shared history.

Since the flag designs are quite simple and similar, I decided to try to 
replicate them using only CSS (or Sass, more precisely).


## Flags
Currently, all the 5 main Scandinavian flags are available:
- Denmark
- Finland
- Iceland
- Norway
- Sweden


## Design
### Denmark
> A red field charged with a white cross extending to the edges; the vertical part of the cross is shifted to the hoist side. Dimensions: 3:1:3 width / 3:1:4.5 to 3:1:5.25 length.
> — _from [Wikipedia](https://en.wikipedia.org/wiki/Flag_of_Denmark)_

__Ratio:__ 28:37  
__Vertical proportions:__ 12:4:12  
__Horizontal proportions:__ 12:4:21  
__Colours:__ red (Pantone 186C, R:210 G:16 B:52), white  

### Finland
> Sea-blue Nordic cross on white field.
> — _from [Wikipedia](https://en.wikipedia.org/wiki/Flag_of_Finland)_

__Ratio:__ 11:18  
__Vertical proportions:__ 4:3:4  
__Horizontal proportions:__ 5:3:10  
__Colours:__ white, blue (Pantone 2945C, R:0 G:82 B:165)  

### Iceland
> A white-fimbriated red Nordic cross on a blue field
> — _from [Wikipedia](https://en.wikipedia.org/wiki/Flag_of_Iceland)_

__Ratio:__ 18:25   
__Vertical proportions:__ 7:1:2:1:7  
__Horizontal proportions:__ 7:1:2:1:14  
__Colours:__ blue (Pantone 2945C, R:0 G:82 B:165), white, red (Pantone 1795, R:215  G:31  B:41)  

### Norway
> A white-fimbriated blue Nordic cross on a red field
> — _from [Wikipedia](https://en.wikipedia.org/wiki/Flag_of_Norway)_

__Ratio:__ 8:11   
__Vertical proportions:__ 6:1:2:1:6  
__Horizontal proportions:__ 6:1:2:1:12  
__Colours:__ red (Pantone 186C, R:210 G:16 B:52), white, blue (Pantone 301, R:0 G:85 B:155)  

### Sweden
> Blue with a yellow/gold Scandinavian cross that extends to the edges of the flag. Dimensions: 5:2:9 horizontally and 4:2:4 vertically.
> — _from [Wikipedia](https://en.wikipedia.org/wiki/Flag_of_Sweden)_

__Ratio:__ 5:8   
__Vertical proportions:__ 4:2:4  
__Horizontal proportions:__ 5:2:9  
__Colours:__ blue (Pantone 301, R:0 G:85 B:155), yellow (Pantone 116C, R:255 G:206 B:0)  


## Basic technique
- A single HTML element for the flag itself, a `div`.
- A single class addition will show the flag, like `.flag-norway`, for example.
- On 2-colours flags, the `::before` pseudo-element is the vertical bar and 
`::after` is the horizontal bar.
- On 3-colours flags, a different technique is employed: the vertical bar is
achieved setting a linear gradient as the `<div>`’s background, using hard stops
to set the limits of each colour; the `::after` pseudo-element is reponsible
for the inner horizontal bar, and the outer horizontal bar is the `::before`,
with a transparent bit to not cut the vertical bar.

#### Why not use the same technique for both?
I _could_, in fact, use the latter technique for both situations (flags with 
2 or 3 colours), but I prefer to have two different approaches for two different
problems: when 2 pseudo-elements are enough and when you (apparently) need more.

### Constraints
Currently, all the dimensions & ratios are dependent on a single dimension,
which is the height of the final flags (identified as `$height-global` on the
file `_base.css`). I would like to change this, but I couldn’t find a way to
do so, CSS-only. So, if you want flags with different dimensions, just change
that variable to the height you want, compile the Sass and use the CSS.


## Compile
I have included a Makefile with the following targets:
- `build` — Default action, compiles the Sass code & minifies the resulting CSS.
- `watch` — Compiles the Sass code & minifies the resulting CSS, watching the
project’s SCSS files for modifications and repeating the process.
- `test` — Helps with debugging; runs `build`, opens `test/index.html` (a kind
of playground page) and then runs `watch`.
- `clean` — Removes any disposable folder, like `css/` and `.sass-cache/`.


## Further reading
- [History and specifications of Nordic flags](http://www.norden.org/en/fakta-om-norden-1/the-nordic-flags)
- [CRWFlags – Denmark](http://www.crwflags.com/fotw/flags/dk.html)
- [CRWFlags – Finland](http://www.crwflags.com/fotw/flags/fi.html)
- [CRWFlags – Iceland](http://www.crwflags.com/fotw/flags/is.html)
- [CRWFlags – Norway](http://www.crwflags.com/fotw/flags/no.html)
- [CRWFlags – Sweden](http://www.crwflags.com/fotw/flags/se.html)
- [Wikipedia – List of national flags’ aspect ratio](https://en.wikipedia.org/wiki/List_of_countries_by_proportions_of_national_flags)
