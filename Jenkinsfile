import Maine

def testGroovy = new Maine()

pipeline {
    agent { docker { image 'node:14-alpine' } }
    stages {
        stage('build') {
            steps {
                sh 'npm --version'
            }
        }
        stage('test scriptes') {
            testGroovy.buildImage();
        }
    }
}
