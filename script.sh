#!/bin/bash
#apt-get install python-autopep8
 autopep8 --exit-code --recursive --in-place --aggressive --aggressive .

 if [ steps.autopep8.outputs.exit-code == 2 ]
 then   git commit -am "Automated autopep8 fixes"
        git config user.email "gautham.kukutla@gmail.com"
        git config user.name "Gautham-kukutla"
        git push "https://github.com/Gautham-kukutla/gitchanges.git"
 else  echo "no changes done"
 fi
