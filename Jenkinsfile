#!groovy

node('master') {

    currentBuild.result = "SUCCESS"

    try {

       stage('Checkout'){

          checkout scm
       }

       stage('Pre-Build'){
       sh('mvn clean install -DskipTests')
       sh('docker build -t manojrpms/testimage .')
       sh('docker login -u manojrpms -p manoj@ilimi1')
       sh('docker push manojrpms/testimage')
       }

    }
    catch (err) {
        currentBuild.result = "FAILURE"
        throw err
    }

}
