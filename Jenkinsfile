def mainn = new org.mainn()

pipeline {
    agent { docker { image 'node:14-alpine' } }
    stages {
        stage('build') {
            steps {
                sh 'npm --version'
            }
        }
        stage('test scriptes') {
            mainn.buildImage();
        }
    }
}
