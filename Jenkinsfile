#!groovy

node('master') {

    currentBuild.result = "SUCCESS"

    try {

       stage('Checkout'){

          checkout scm
       }

       stage('Pre-Build'){
       }

    }
    catch (err) {
        currentBuild.result = "FAILURE"
        throw err
    }

}
