all: README.md

README.md: guessinggame.sh
	echo "# Bash guessing game" > README.md
	date >> README.md
	echo "The guessinggame.sh script contains the following number of lines:" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

clean:
	rm README.md