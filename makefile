today := $(shell date +%Y-%m-%d.%H:%M:%S)
locs := $(shell cat guessinggame.sh | wc -l)

all:
	rm README.md
	echo "## Project Title: Guessing Game\n" >> README.md
	echo "## Creation Date-Time: $(today)\n" >> README.md
	echo "## Lines of Code: $(locs)\n" >> README.md
