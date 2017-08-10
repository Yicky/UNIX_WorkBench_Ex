README.md:
	echo "# Project Name: Guessing Game" > README.md
	date +%F >> README.md
	date +%R >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
