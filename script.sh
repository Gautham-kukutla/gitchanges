#!/bin/bash
#apt-get install python-autopep8
find . -name '*.py' > file.txt
#cat file.txt
 while read -r line
 do autopep8 --in-place --aggressive --aggressive "$line"
 done < file.txt
 
 git status | grep ".py$" > file.txt
cat file.txt
 if [ -s file.txt ]
 then   rm file.txt
        git add .
        git commit -am "Commit done"
        git push "https://github.com/Gautham-kukutla/pythontest.git"
 else  echo "no changes done"
 fi
