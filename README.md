Inspired by 2015’s [Mönki Gras](http://monkigras.com) conference,
_‘Nordic Craft Culture and Tech’_, trying to replicate the main 
Scandinavian national flags with only CSS.

# The Scandinavian Cross

Somre remarks collected about dimensions & proportions:
- A red flag with a white cross with no split end. The white cross must be 1/7 of the flag's height. The two first fields must be square in form and the two outer fields must be 6/4 lengths of those.




Dimensions
- Inner cross width:  1/7 of height
- The 2 square:       3/7 of height
- The other 2 pieces: 6/4 of the squares


Countries
* Denmark (Dannebrog)
  - Colours:
    - White
    - Red (Pantone 186C, R:210  G:16  B:52, C:11  M:100 Y:85  K:2)
  - Sass: rgb(210, 16, 52)
* Norway
  - Wiki: https://commons.wikimedia.org/wiki/File:Flag_of_Norway.svg
  - Colours:
    - White
    - Blue: #002868
    - Red: #EF2B2D
* Iceland
  - Wiki: https://en.wikipedia.org/wiki/Flag_of_Iceland#Colors_of_the_flag
  - Colours:
    - White
    - Blue: (CMYK 100, 69, 0, 11.5; #0048E0)
    - Red: (CMYK 0, 94, 100, 0; #FF0F00)
* Sweden
  - Colours:
    - Blue
      - Sass: rgb(0, 127, 229)
    - Yellow
      - Sass: rgb(255, 204, 0)
* Finland
  - Wiki: https://en.wikipedia.org/wiki/Flag_of_Finland#Colours
  - Colours
    - White
    - Blue (Pantone 294C, R=24, G=68, B=126)
      - Sass: rgb(24, 68, 126)


https://www.google.com/webhp?sourceid=chrome-instant&ion=1&espv=2&ie=UTF-8#q=scandinavian%20flag%20rgb
Colours
- Denmark


## Basic technique
- A single HTML element for the flag itself, a `div`
- A single class addition will show the flag, like `.flag-norway`
- Set `div`’s background steps to set the background itself _and_ any vertical line
- The horizontal line will be made with the `div`’s `::after` pseudo-element


## Some problems
- For 2-coloured flags, I thought about using `::before` for the vertical and `::after` for the horizontal
- However, for 3-coloured flags, I needed more pseudo-elements than I had available


## Proportions

### World
https://en.wikipedia.org/wiki/List_of_countries_by_proportions_of_national_flags
http://www.crwflags.com/fotw/flags/xf-size.html

### Denmark
http://www.crwflags.com/fotw/flags/dk.html

### Sweden
http://www.crwflags.com/fotw/flags/se.html





## Compile

To get the equivalent CSS code, run the following command in the root of this project:

    sass --watch scss/main.scss:style.css --style compressed
    
Add `--style compressed` at the end of the command if you want the CSS minimised.
