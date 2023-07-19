#Command to find keys from file.
zgrep -Ff /path/key-to-be-checked.txt *.gz >> result.txt
grep -Ff /path/key-to-be-checked.txt *.csv >> result.txt
