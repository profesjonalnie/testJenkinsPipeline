#!/usr/bin/env groovy
@Library("testJenkinsGroovy@master")

def mainn = new nope.Maine()

pipeline {
    agent {         docker {
      image "mcr.microsoft.com/azure-cli:latest"
      args "-u root"
    } }
    stages {
        stage('testing script inside jenkinsfile') {
            steps {
                script {
                sh 'echo abcd'
                }
            }
        }
        stage('Using connection from groovy'){
            steps {
                script {
                def TAG_NAME= "manulttt"
                mainn.testingOne()
                }
            }
        }
        stage('next groovy') {
            steps {
                script{
            mainn.buildImage(credentialsId: "azure-sp-ev4");
                }
            }
        }
        stage('last groovy'){
            steps {
                script {
                mainn.secondFunction()
                }
            }
        }
    }
}
