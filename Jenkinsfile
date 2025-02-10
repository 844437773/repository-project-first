pipeline {
    agent any
    
    environment {
        NODE_VERSION = '16.14.0'
        PROJECT_PATH = '/var/lib/jenkins/workspace/project-vue'
        DEPLOY_PATH = '/projects/repository-project-first'
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
                    rm -rf ${DEPLOY_PATH}/dist/*
                    cp -r ${PROJECT_PATH}/dist/* ${DEPLOY_PATH}/
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