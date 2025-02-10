pipeline {
    agent any
    
    environment {
        NODE_VERSION = '16.14.0'
        PROJECT_PATH = '/projects/repository-project-first/'
        DEPLOY_PATH = '/projects/repository-project-first/dist'
    }
    
    stages {
        stage('拉取代码') {
            steps {
                git branch: 'master', 
                    url: 'git@github.com:844437773/repository-project-first.git'
            }
        }
        
        stage('安装依赖') {
            steps {
                sh '''
                    pnpm install
                '''
            }
        }
        
        stage('项目打包') {
            steps {
                sh '''
                    npm run build
                '''
            }
        }
        
        stage('部署项目') {
            steps {
                sh '''
                '''
            }
        }
    }
    
    post {
        success {
            echo '部署成功!'
        }
        failure {
            echo '部署失败!'
        }
    }
} 