#!/bin/bash
find . -name '*.py' > file2
while read -r line 
do autopep8 --in-place --exit-code --aggressive --aggressive "$line"
   if [ $? -eq 2 ] 
	then	git add "$line"
   fi
done < file2
git status | grep ".py$" > file2
if  [ -s file2 ]
then  rm file2
	git commit -m "autopep8 changes done"
	git push "https://{GIT_USERNAME}:{GIT_PASSWORD}@github.com/{GIT_USERNAME}/gitchanges.git" HEAD:main
else	rm file2
	echo "no autopep8 changes"
fi
