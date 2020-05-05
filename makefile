README.md:guessinggame.sh
	amount_of_lines=$(wc -l guessinggame.sh | awk '{ print $1 }')
	touch README.md
	echo "# Guessing Game" > README.md
	echo "Make was run $(shell date)" >> README.md
	echo "\nThe program contains $(shell wc -l < guessinggame.sh) lines of code" >> README.md
