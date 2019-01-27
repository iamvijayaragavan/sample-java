#!/usr/bin/env groovy
 
import hudson.model.*
import hudson.EnvVars
import groovy.json.JsonSlurperClassic
import groovy.json.JsonBuilder
import groovy.json.JsonOutput
import java.net.URL
 
try {
node {
 stages{
  stage('Checkout'){
    echo "\u2600 BUILD_URL=${env.BUILD_URL}"
  }
  stage('Build'){
    def workspace = pwd()
    echo "\u2600 workspace=${workspace}"
  }
  stage('Vaildate'){
   echo "Hello"
  }
 }
} // node
} // try end
catch (exc) {
echo "Bad exception"
} finally {
  
 (currentBuild.result != "ABORTED") && node("master") {
     // Send e-mail notifications for failed or unstable builds.
     // currentBuild.result must be non-null for this step to work.
     //step([$class: 'Mailer',
     //   notifyEveryUnstableBuild: true,
     //   recipients: "${email_to}",
     //   sendToIndividuals: true])
 }
 
}
