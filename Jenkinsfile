#!/usr/bin/env groovy
@Library("testJenkinsGroovy@master")

def mainn = new nope.Maine()

pipeline {
    agent {         docker {
      image "mcr.microsoft.com/azure-cli:latest"
      args "-u root"
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
