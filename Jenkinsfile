#!/usr/bin/env groovy
@Library("testJenkinsGroovy@master")

def mainn = new nope.Maine()

pipeline {
    agent { docker { image 'ubuntu:20.04' } }
    stages {
        stage('build') {
            steps {
                sh 'lsb_release'
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
