
${BASE}.docx: ${BASE}.notes.docx.markdown ${BIBDEPS} ${DIAGDEPS}
	pandoc  ${CITEFLAGS} \
		--to docx \
		-B ../_includes/talk-notation.tex \
		${DOCXFLAGS} \
		--out ${BASE}.docx  \
		${BASE}.notes.docx.markdown 

${BASE}.notes.html: ${BASE}.notes.html.markdown ${BIBDEPS}
	pandoc  ${PDSFLAGS} \
		-o ${BASE}.notes.html  \
		${BASE}.notes.html.markdown 

