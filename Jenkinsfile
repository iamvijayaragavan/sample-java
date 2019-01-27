#!/usr/bin/env groovy

import hudson.model.*
import hudson.EnvVars
import groovy.json.JsonSlurperClassic
import groovy.json.JsonBuilder
import groovy.json.JsonOutput
import java.net.URL
 
try {
node {
 stage('Pre-Requirestion'){
  properties([[$class: 'BuildDiscarderProperty',strategy: [$class: 'LogRotator', numToKeepStr: '5']],disableConcurrentBuilds(),])
  echo("Hello Req")
  echo("\u2600 BUILD_URL=${env.BUILD_URL}")
  def workspace = pwd()
  echo("\u2600 workspace=${workspace}")
  mailnotification = "iamvj@gmail.com"
  javaversion = 'JDK-1.8'
  echo("\u2600 Java version=${javaversion}")
  branchname = "${env.BRANCH_NAME}"
  echo("\u2600 Branch Name=${branchname}")
  sh ("git config --global user.email 'admin@procon.com'")
		sh ("git config --global user.name 'Procon'")
  giturl=sh(script: "git config --get remote.origin.url",returnStdout: true).trim())
  echo("\u2600 Current Git URL=${giturl}")
 }
 stage('Checkout'){
  echo "Git Checkout"
 }
 stage('Build'){
  echo "Hello World"
 }
 stage('SonarQube Ananlyis'){
  echo "Hi Sonar"
 }
 stage('Docker Build'){
  echo "Hello docker"
 }
 stage('Publish Image'){
  echo "Welclome Hub"
 }
} // node
 
} // try end
catch (exc) {
/*
 err = caughtError
 currentBuild.result = "FAILURE"
 String recipient = 'infra@lists.jenkins-ci.org'
 mail subject: "${env.JOB_NAME} (${env.BUILD_NUMBER}) failed",
         body: "It appears that ${env.BUILD_URL} is failing, somebody should do something about that",
           to: recipient,
      replyTo: recipient,
 from: 'noreply@ci.jenkins.io'
*/
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
