#!groovy

node('build-slave') {

    currentBuild.result = "SUCCESS"

    try {

       stage('Checkout'){

          checkout scm
       }

       stage('Pre-Build'){
       sh('mvn clean install -DskipTests')
       sh('docker build -t sunbird/testimage .')
       sh('docker login -u purplesunbird -p engg-access  )
       sh('docker push sunbird/testimage')
 
       }

    }
    catch (err) {
        currentBuild.result = "FAILURE"
        throw err
    }

}
