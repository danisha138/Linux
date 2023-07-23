#Read Data from csv file and dispaly only first 2 column data
cat filename.csv | head -5 | awk -F ',' '{print$1,$2}
