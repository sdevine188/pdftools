library(pdftools)

# https://ropensci.org/blog/2016/03/01/pdftools-and-jeroen/

# setwd
setwd("H:/R/pdftools")

# convert i-130 form to text
list.files()

# unable to read i-130 for some reason??
# text <- pdf_text("i-130.pdf")
text <- pdf_text("i-485.pdf")
text[1]

# no toc available
toc <- pdf_toc("i-485.pdf")
toc


##########################################


text <- pdf_text("jsonlite_article.pdf")

# inspect

# print all pages
text

# print first page
text[1]
text[2]


#######################################


# Table of contents
toc <- pdf_toc("jsonlite_article.pdf")
toc

# Show as JSON
jsonlite::toJSON(toc, auto_unbox = TRUE, pretty = TRUE)


############################################


# Author, version, etc
info <- pdf_info("jsonlite_article.pdf")
info


#############################################


# Table with fonts
fonts <- pdf_fonts("jsonlite_article.pdf")
fonts


###########################################


# renders pdf to bitmap array
bitmap <- pdf_render_page("jsonlite_article.pdf", page = 1)
bitmap

# save bitmap image
png::writePNG(bitmap, "page.png")
jpeg::writeJPEG(bitmap, "page.jpeg")
# webp::write_webp(bitmap, "page.webp")



