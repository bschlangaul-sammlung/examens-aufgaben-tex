readme:
	bschlangaul-werkzeug.js generiere-readme

# sammlungen_korrekt:
# 	bschlangaul-werkzeug.js sammlungen aufgaben --korrektheit 2 -vvv

sammlung:
	bschlangaul-werkzeug.js sammlungen aufgaben-ng
	lualatex --shell-escape Bschlangaul-Sammlung.tex

# sammlungen_alle_examens_aufgaben:
# 	bschlangaul-werkzeug.js sammlungen aufgaben --ziel Alle-Examens-Aufgaben -vvv

pdf:
	bschlangaul-werkzeug.js kompiliere-tex

sync_pdfs:
	rsync --archive --verbose --delete --prune-empty-dirs \
		--exclude=".repos" \
		--exclude=".git" \
		--include="*/" \
		--include="*.pdf" \
		--exclude="*" \
		. ../examens_aufgaben_pdf

clean:
	git clean -dfX

.PHONY: readme aufgaben sammlungen
