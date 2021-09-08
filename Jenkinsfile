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
                script {
                sh 'echo abcd'
                }
            }
        }
        stage('install kubectl'){
            steps {
                script {
                mainn.installKubectl()
                }
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
                script {
                mainn.secondFunction()
                }
            }
        }
    }
}
