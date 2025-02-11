all: index.html rules.html prizes.html contact.html

%.html: %.md
	pandoc -s --data-dir=. -t html5 $< -o $@
