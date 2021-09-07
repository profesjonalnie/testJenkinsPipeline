#!/usr/bin/env groovy
@Library("testJenkinsGroovy@master")

def mainn = new nope.Maine()

pipeline {
    agent {     dockerfile {
        filename 'Dockerfile'
        label 'my-defined-label'
    } }
    stages {
        stage('build') {
            steps {
                sh 'echo abcd'
            }
        }
        stage('test scriptes') {
            steps {
                script{
            mainn.buildImage(credentialsId: "azure-sp-ev4");
                }
            }
        }
    }
}
