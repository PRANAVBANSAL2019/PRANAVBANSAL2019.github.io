all: README.md

README.md: guessinggame.sh
	echo "## MY UNIX WORKBECH COURSE" > README.md
	
	echo -n "\n**Make date**: " >> README.md
	date >> README.md
	echo -n "\n**Number of lines in guessinggame.sh:** " >> README.md
	grep -c '' guessinggame.sh >> README.md

clean:
	rm README.md