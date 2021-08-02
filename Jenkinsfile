pipeline {
    environment {
    imageName = "devops-challenge:1.0.0"
    dockerImage = ''
    }

    agent any
    tools {nodejs "latest"}
    
    stages {
            stage('Cloning our Git') {
                steps {
                git 'git@github.com:pidmad92/devops-challenge.git'
                }
            }

            stage('build') {
                steps {
                sh 'npm --version'
                sh 'npm install'
                }
            }

            stage('test') {
                steps {
                sh 'npm test'
                }
            }

            stage('Building Docker Image') {
                steps {
                    script {
                        dockerImage = docker.build imageName
                    }
                }
            }

        }
    }