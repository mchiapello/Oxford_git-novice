require(knitr)
require(markdown)
x <- dir()
x <- x[grepl("\\d+.*md$", x)]
for (i in 1:length(x)){
	markdownToHTML(x[i], paste0(gsub("md", "", x[i]), "html"))
}
