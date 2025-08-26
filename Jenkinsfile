pipeline {
    agent any

    tools {
        // Asegúrate de que este nombre coincida con la configuración de Maven en Jenkins
        maven 'Maven_3.8.6'
    }

    stages {
        stage('Limpiar y Compilar') {
            steps {
                sh "mvn clean compile"
            }
        }

        stage('Pruebas Unitarias') {
            steps {
                sh "mvn test"
            }
        }

        stage('Analizar Cobertura de Código (JaCoCo)') {
            steps {
                sh "mvn jacoco:report"
            }
        }

        stage('Empaquetar') {
            steps {
                sh "mvn package"
            }
        }
    }

    post {
        always {
            echo 'Fin del Pipeline.'
        }
        success {
            echo 'El build fue exitoso. ¡Excelente trabajo!'
        }
        failure {
            echo 'El build falló. Revisa los logs para depurar.'
        }
    }
}