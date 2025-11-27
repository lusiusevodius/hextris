pipeline {
    agent any

    stages {
        stage('Pull SCM') {
            steps {
                git branch: 'main', url: 'https://github.com/lusiusevodius/hextris.git'
            }
        }
        
        stage('Containerized Apps') {
            steps {
                sh'''
                docker build -t 28011997/hextris .
                '''
            }
        }

        stage('Push to Registry') {
            steps {
                sh'''
                docker push 28011997/hextris
                '''
            }
        }

        stage('Deploy Apps') {
            steps {
                sh'''
                kubectl apply -f manifest/
                '''
            }
        }   
    }
}