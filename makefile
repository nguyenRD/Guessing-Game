all: README.md

README.md: guessinggame.sh
	echo '# Guessing Game' > README.md
	echo '\n' >> README.md
	echo 'This make file was run at:' >> README.md
	date >> README.md
	echo '\n' >> README.md
	echo 'The number of lines of code:'
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

clear:
	rm README.md
