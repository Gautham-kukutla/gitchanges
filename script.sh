#!/bin/bash
#apt-get install python-autopep8
 autopep8 --exit-code --recursive --in-place --aggressive --aggressive .
 pwd

 if [ steps.autopep8.outputs.exit-code == 2 ]
 then   git commit -am "Automated autopep8 fixes"
        git config user.email "gautham.kukutla@gmail.com"
        git config user.name "Gautham-kukutla"
        git push "https://{GIT_USERNAME}:{GIT_PASSWORD}@github.com/{GIT_USERNAME}/gitchanges.git"
 else  echo "no changes done"
 fi
