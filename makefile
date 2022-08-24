all: clean README.md

README.md:
	echo "#Guessing Game#" > README.md
	echo "Created on: *$$(date -u +"%Y-%m-%d %T")*" >> README.md
	echo "The number of lines of code contained in *guessinggame.sh*: **$$(wc -l guessinggame.sh | egrep -o "[0-9]+")**"  >> README.md
clean:
	rm README.md
