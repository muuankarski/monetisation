setwd("~/workspace/russia/rlms/monetisation/")
library(knitr)
library(markdown)
#
knit('index.Rmd','README.md')
knit2html('index.Rmd', 
          stylesheet="~/workspace/web/css/rmarkdown.css",
          options = c('toc', markdown::markdownHTMLOptions(TRUE)))
#
knit2html('desc_consumption_compare.Rmd', 
          stylesheet="~/workspace/web/css/rmarkdown.css",
          options = c('toc', markdown::markdownHTMLOptions(TRUE)))
#
knit2html('desc_income_compare.Rmd', 
          stylesheet="~/workspace/web/css/rmarkdown.css",
          options = c('toc', markdown::markdownHTMLOptions(TRUE)))
#
knit2html('desc_material_compare.Rmd', 
          stylesheet="~/workspace/web/css/rmarkdown.css",
          options = c('toc', markdown::markdownHTMLOptions(TRUE)))
#
knit2html('macro_analysis.Rmd', 
          stylesheet="~/workspace/web/css/rmarkdown.css",
          options = c('toc', markdown::markdownHTMLOptions(TRUE)))
#
knit2html('load_n_clean.Rmd', 
          stylesheet="~/workspace/web/css/rmarkdown.css",
          options = c('toc', markdown::markdownHTMLOptions(TRUE)))
#
knit2html('figures_moscow.Rmd', 
          stylesheet="~/workspace/web/css/rmarkdown.css",
          options = c('toc', markdown::markdownHTMLOptions(TRUE)))




setwd("~/workspace/russia/rlms/papers/conference2013/article")
library(knitr)
knit("article.Rmd")
system("~/.cabal/bin/pandoc article.md --number-sections -o article.pdf")
system("~/.cabal/bin/pandoc article.md -o article.docx")
system("~/.cabal/bin/pandoc -s article.md --number-sections -o article.html")

system("pandoc -s article.md -o article.html --number-sections --bibliography=bibtex.bib")
system("~/.cabal/bin/pandoc article.md --variable documentclass:tufte-handout --number-sections --bibliography=bibtex.bib --latex-engine=xelatex --template=tex_templates/tufte_handout.latex -o article.pdf")

--variable documentclass:proc
--variable documentclass:journal
--variable documentclass:artikel1
--variable documentclass:artikel2
--variable documentclass:artikel3
--variable documentclass:paper
--variable documentclass:refart

system("pandoc article.md --template=tex_templates/mytemplate.tex --number-sections --bibliography=bibtex.bib -o article.pdf")
