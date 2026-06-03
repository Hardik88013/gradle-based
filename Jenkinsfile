pipeline {
    agent any

    stages {

        stage('Compile Java') {
            steps {
                bat 'javac HelloWorld.java'
            }
        }

        stage('Create JAR') {
            steps {
                bat 'jar cfe HelloWorld.jar HelloWorld HelloWorld.class'
            }
        }

        stage('Archive Artifact') {
            steps {
                archiveArtifacts artifacts: 'HelloWorld.jar'
            }
        }

        stage('Build Docker Image') {
            steps {
                bat 'docker build -t hello-java .'
            }
        }

        stage('Run Docker Container') {
            steps {
                bat 'docker run --rm hello-java'
            }
        }
    }
}