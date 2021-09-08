#!/usr/bin/env groovy
@Library("testJenkinsGroovy@master")

def mainn = new nope.Maine()

pipeline {
    agent {         docker {
      image "mcr.microsoft.com/azure-cli:latest"
      args "-u root"
    } }
    stages {
        stage('testing echo') {
            steps {
                sh 'echo abcd'
            }
        }
        stage('install kubectl'){
            steps {
                mainn.installKubectl()
            }
        }
        stage('test scriptes') {
            steps {
                script{
            mainn.buildImage(credentialsId: "azure-sp-ev4");
                }
            }
        }
        stage('verify scope'){
            steps {
                mainn.secondFunction()
            }
        }
    }
}
