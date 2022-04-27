#!/usr/bin/env groovy
@Library("testJenkinsGroovy@master")

def mainn = new nope.Maine(zmienna: "mmmooojja")
def TAG_NAME=""

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
                mainn.testingOne(TAG_NAME: buildingTag(), abc: "bla bla", zmiennaWidmo: "")
                }
            }
        }
        stage('use docker image') {
            steps {
                script {
                    docker.build("mytag").run("--network host"){
                        sh "apk add curl"
                        sh "curl https://teststatic.viessmann.com/resources/technical_documents/DE/de/WCL/4759849WCL00002_1.pdf"
                    }
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
        stage('next groovy') {
            steps {
                script{
            mainn.buildImage(credentialsId: "azure-sp-ev4");
                }
            }
        }
    }
}
