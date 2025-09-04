all: index.html rules.html prizes.html contact.html task.html

%.html: %.md templates/default.html5
	pandoc -s --data-dir=. -t html5 $< -o $@
