README.md:guessinggame.sh
	touch README.md
	echo "# Guessing Game" > README.md
	echo "Make was run $(shell date)" >> README.md
	echo "\nThe program contains $(shell wc -l < guessinggame.sh) lines of code" >> README.md
