pipeline {
    agent any

    stages {
        stage('Build') {
            agent {
                docker {
                    image 'node:18-alpine'
                    reuseNode true
                }
            }
            steps {
                sh '''
                   ls -la
                   npm --version
                   node --version
                   npm ci
                   npm run build
                   ls -la
                '''
            }
        }
        stage('Find index'){
            steps {
                sh 'test -f build/index.html && echo "index.html found" || echo "index.html not found"'
            }
        }
        stage('Test') {
            agent {
                docker {
                    image 'node:18-alpine'
                    reuseNode true
                }
            }
            steps {
                sh '''
                   echo "Running tests..."
                   npm run test
                '''    
            }
        }
    }
}
