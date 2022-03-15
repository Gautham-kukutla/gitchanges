pipeline {
    agent any

    stages {
        stage('Clone') {
            steps {  
                sh'''rm -rf task
                git clone https://github.com/Gautham-kukutla/gitchanges.git change
                '''
            }}
        stage('Creating Files') {
            steps {   
                sh '''cd change
                touch file2.txt
                '''
            }
        }
        stage('Git Modification Check') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'gittoken', passwordVariable: 'GIT_PASSWORD', usernameVariable: 'GIT_USERNAME')]) {

                sh'''pip install GitPython 
                cd change
                pwd
                python3 python_script.py
                chmod +x script2.sh
                ./script2.sh     
                '''
                }}
        }
    }
}
