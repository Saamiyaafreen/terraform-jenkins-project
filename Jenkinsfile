pipeline {
    agent any

    environment {
        AWS_ACCESS_KEY_ID     = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
        AWS_DEFAULT_REGION    = 'ap-south-1'
    }

    stages {
        stage('1. Checkout') {
            steps {
                checkout scm
            }
        }

        stage('2. Terraform Init') {
            steps {
                sh 'terraform init'
            }
        }

        stage('3. Format Check') {
            steps {
                sh 'terraform fmt -check'
            }
        }

        stage('4. Validate') {
            steps {
                sh 'terraform validate'
            }
        }

        stage('5. Plan') {
            steps {
                sh 'terraform plan'
            }
        }

        stage('6. Manual Approval') {
            steps {
                input message: 'Do you want to apply these infrastructure changes?', ok: 'Yes, Apply!'
            }
        }

        stage('7. Apply') {
            steps {
                sh 'terraform apply -auto-approve'
            }
        }
    }

    post {
        always {
            echo 'Pipeline execution completed.'
        }
        success {
            echo 'Infrastructure deployed successfully!'
        }
        failure {
            echo 'Pipeline failed. Please check the logs.'
        }
    }
}