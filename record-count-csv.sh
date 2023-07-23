#Line count including file header
cat Loan_payment.csv | wc -l

#Get the line count from 2nd line of the file
tail -n +2 abc.csv | wc -l

#Get the line count from 2nd line of the file
for f in Loan_payment.csv; do sed '1d' "$f"; done | wc -l

#Get the line count excluding header with their filename and save the result in txt file
LANG=C find . -name '*.csv' -exec sh -c 'echo "$(basename "$0"): $(($(cat "$0" | wc -l) - 1))"' {} \; > output.txt

LANG=C find . -name '*.zip' -exec sh -c 'unzip -p "$0" "*.csv" | tail -n +2 | wc -l' {} \; > output.txt
