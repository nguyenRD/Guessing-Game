all: README.md

README.md: guessinggame.sh
	echo 'Guessing Game' > README.md
	date >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

clear:
	rm README.md
