pipeline {
    agent any
    
    environment {
        NODE_VERSION = '16.14.0'
        PROJECT_PATH = '/var/jenkins_home/workspace/vue3-project'
        DEPLOY_PATH = '/usr/local/nginx/html'
    }
    
    stages {
        stage('拉取代码') {
            steps {
                git branch: 'main', 
                    url: '您的Git仓库地址'
            }
        }
        
        stage('安装依赖') {
            steps {
                sh '''
                    source ~/.nvm/nvm.sh
                    nvm use ${NODE_VERSION}
                    npm install
                '''
            }
        }
        
        stage('项目打包') {
            steps {
                sh '''
                    source ~/.nvm/nvm.sh
                    nvm use ${NODE_VERSION}
                    npm run build
                '''
            }
        }
        
        stage('部署项目') {
            steps {
                sh '''
                    rm -rf ${DEPLOY_PATH}/*
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