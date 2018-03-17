#!groovy

node('build-slave') {

    currentBuild.result = "SUCCESS"

    try {

       stage('Checkout'){

          checkout scm
       }

       stage('Pre-Build'){
       sh('mvn clean install -DskipTests')
       }

    }
    catch (err) {
        currentBuild.result = "FAILURE"
        throw err
    }

}
