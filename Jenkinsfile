pipeline {
    agent any
    
    environment {
        NODE_VERSION = '16.14.0'
        PROJECT_PATH = '/projects/repository-project-first/'
        DEPLOY_PATH = '/var/lib/jenkins/workspace/project-vue/'
    }
    
    stages {
        stage('拉取代码') {
            steps {
                git branch: 'master', 
                    url: 'https://github.com/844437773/repository-project-first.git'
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
                    rm -rf ${PROJECT_PATH}/dist/*
                    cp -r ${DEPLOY_PATH}/dist/* ${PROJECT_PATH}/
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