today := $(shell date +%Y-%m-%d.%H:%M:%S)
locs := $(shell cat guessinggame.sh | wc -l)

all:
	rm README.md
	echo "Project Title: Guessing Game" >> README.md
	echo "Creation Date-Time: $(today)" >> README.md
	echo "Lines of Code: $(locs)" >> README.md
