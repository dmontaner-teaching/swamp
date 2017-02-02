# pan_slides.sh
# 2013-11-19 dmontaner@cipf.es
# Run Pandoc for slides

## Templates
## When the -s/--standalone option is used, 
## pandoc uses a template to add header and footer material that is needed 
## for a self-standing document. To see the default template that is used, just type
## pandoc -D FORMAT
## pandoc -D html
## pandoc -D html5

## The revealjs template has been modified from: 
#      /home/dmontaner/.cabal/share/pandoc-1.12.1/data/templates/default.revealjs
## according to: 
#      reveal.js/index.html

## Pandoc man:
## The raw HTML is passed through unchanged in HTML, S5, Slidy, Slideous, DZSlides, EPUB, Markdown, and Textile output, and suppressed in other formats.

## The option: 
## -R --parse-raw
## is suposed to prevent this but it does not work
## Parse untranslatable HTML codes and LaTeX environments as raw HTML or LaTeX, instead of ignoring them.

## -s, --standalone
## Produce output with an appropriate header and footer


### PARAMETERS
#myfile="slides"
#mytemplate="000_revealjs_template.html"

## --template Implies --standalone.
## -s, --standalone
## Produce output with an appropriate header and footer 
# By default, the slide level is the highest header level in the hierarchy that is followed immediately by content

## Note: in reveal.js slide shows, if slide level is 2, a two-dimensional layout will be produced,

### HTML #######################################################################

## usar el --standalone si al final no uso ningun template mio
## CIDADO CON EL ORDEN DE ALGUNOS PARAMETROS QUE SI QUE IMPORTA

# pandoc --standalone       --slide-level=2                      -V revealjs-url:reveal.js-2.6.1 -V theme:beige -V transition:cube  -f markdown -t revealjs -o diapos00.html  slides.md
# pandoc --standalone                                            -V revealjs-url:reveal.js-2.6.1 -V theme:beige -V transition:cube  -f markdown -t revealjs -o diapos0.html   slides.md
# pandoc --standalone                             --section-divs -V revealjs-url:reveal.js-2.6.1 -V theme:beige -V transition:cube  -f markdown -t revealjs -o diapos1.html   slides.md 
# pandoc --standalone --template=default.revealjs --section-divs -V revealjs-url:reveal.js-2.6.1 -V theme:beige -V transition:cube  -f markdown -t revealjs -o diapos1b.html   slides.md   ##PARECE EL MEJOR  
# pandoc --standalone                             --section-divs -V revealjs-url:reveal.js-2.6.1 -V theme:beige -V transition:cube  -f markdown -t revealjs -o diapos1c.html   slides.md   ##PARECE EL MEJOR  
# pandoc --standalone --template=default.revealjs --section-divs -V revealjs-url:reveal.js-2.6.1 -V theme:beige -V transition:cube  -f markdown -t html5    -o diapos2.html   slides.md
# pandoc              --template=default.revealjs --section-divs -V revealjs-url:reveal.js-2.6.1 -V theme:beige -V transition:cube  -f markdown -t html5    -o diapos3.html   slides.md

 pandoc    --standalone --section-divs -V revealjs-url:reveal.js-2.6.1 -V theme:default -V transition:cube -f markdown -t revealjs -o index_interactive.html     index_interactive.md   ##PARECE EL MEJOR  
 pandoc    --standalone --section-divs -V revealjs-url:reveal.js-2.6.1 -V theme:default -V transition:cube -f markdown -t revealjs -o index.html index.md
#pandoc -R --standalone --section-divs -V revealjs-url:reveal.js-2.6.1 -V theme:default -V transition:cube -f markdown -t revealjs -o agua_r.html agua.md   ##la -R no cambia nada


##Self contained
# pandoc --self-contained --standalone --section-divs -V revealjs-url:reveal.js-2.6.1 -V theme:default -V transition:cube -f markdown -t revealjs -o index_self.html index.md   ##PARECE EL MEJOR  
# pandoc --self-contained --standalone --section-divs -V revealjs-url:reveal.js-2.6.1 -V theme:default -V transition:cube -f markdown -t revealjs -o index_img_self.html index_img.md
