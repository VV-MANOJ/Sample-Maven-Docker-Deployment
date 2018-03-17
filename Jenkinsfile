#!groovy

node('build-slave') {

    currentBuild.result = "SUCCESS"

    try {

       stage('Checkout'){

          checkout scm
       }

       stage('Pre-Build'){
       sh('mvn clean install -DskipTests')
       sh('docker build -t testimage .')
       }

    }
    catch (err) {
        currentBuild.result = "FAILURE"
        throw err
    }

}
