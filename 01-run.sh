#Max's First Line Change, another change to this line
#!/bin/bash
#Script counts the number of genes in the user input file
#Usage: bash 01-run.sh filename
#Each gene contains a single line which does not start with a '#' and whose 3rd field is the word 'gene'
#These aforementioned lines are counted to calculate gene count.
#If the user does not provide a file input then the process will exit and a usage tip is provided.

#Provide usage instructions if improper input from user
if [ $# -eq 0 ]; then #if arg (filename) is equal to zero (no input)
		echo "Usage: $0 filename" #Print usage
		exit 1	#exit process due to improper usage
fi #end if statement

filename=$1 #set variable, filename, to input arg 1
#Print output preceding the number of genes; no new line (return)
echo -n "The number of genes in $filename is "
#Count lines that don't start with '#' (#=comments) and whose 3rd field is "gene"
cat $filename | #access text in filename
	grep -v '^#' | #select lines that don't start with '#'
	cut -f3 | #selects 3rd field within lines
	grep gene | #select lines with "gene"
	wc -l #prints line count (i.e number of genes) of selected lines
	
#this comment was added for tutorial purposes (track changes)
#another comment for same purpose
#another comment change
#add comment
#This is Max's Comment
#last line change
