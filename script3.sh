#!/bin/bash
find . -name '*.py' > file2
while read -r line 
do autopep8 --in-place --exit-code --aggressiev --aggressive "$line"
   if [ $? -eq 2 ] 
	then	git add "$line"
   fi
done < file2
git status | grep ".py$" > file2
if  [ -s file2 ]
then  rmfile2
	git commit -m "autopep8 changes done"
	git push "https://github.com/Gautham-kukutla/gitchanges.git"
else	rm file2
	echo "no autopep8 changes"
fi
