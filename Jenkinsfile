pipeline {
    agent any

    tools{
        maven "maven_3_9"
    }

    stages {
        stage('Build maven') {
            steps {
                sh 'mvn -v'
                sh 'echo %JAVA_HOME%'
                sh 'java -version'
                sh 'docker -v'
                sh 'mvn clean install'
            }
        }
        stage('Build docker image') {
            steps {
                sh 'docker build -t toxichua/demo .'
                sh 'docker run -p 8081:8081 toxichua/demo'
            }
        }
    }

}