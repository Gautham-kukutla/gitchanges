pipeline {
    agent any

    stages {
        stage('Clone') {
            steps {  
                sh'''rm -rf change
                git clone https://github.com/Gautham-kukutla/gitchanges.git change
                '''
            }}
        stage('Git Modification Check') {
             environment { 
                AN_ACCESS_KEY = credentials('gittoken') 
            }
            steps {       
                sh'''
                printenv
                pip install --upgrade autopep8
                cd change
                pwd
                git config --global user.email "gautham.kukutla@gmail.com"
                git config --global user.name "Gautham-kukutla" '''
                withCredentials([usernamePassword(credentialsId: 'gittoken', passwordVariable: 'GIT_PASSWORD', usernameVariable: 'GIT_USERNAME')]) {
                sh ' ./script3.sh '         
                }}
        }
    }
}
