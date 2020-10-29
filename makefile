README.md: 
echo "## GuessingGame" > README.md
echo "" >> README.md
LC_TIME=en_US.utf8
echo $(date) >> README.md
echo "" >> README.md
wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
