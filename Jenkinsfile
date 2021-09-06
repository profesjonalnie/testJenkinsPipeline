#!/usr/bin/env groovy
@Library("testJenkinsGroovy@master")

def mainn = new org.mainn.Maine()

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
