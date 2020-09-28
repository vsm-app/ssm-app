pipeline {
    agent any

    tools {
        maven "maven-3.6.3"
    }

    stages {
        stage('Build') {
            steps {
                git 'https://github.com/vsm-app/ssm-app.git'
                sh "mvn -Dmaven.test.failure.ignore=true clean package"
            }

            post {
                success {
                    junit '**/target/surefire-reports/TEST-*.xml'
                    archiveArtifacts 'target/*.jar'
                }
            }
        }
    }
}
