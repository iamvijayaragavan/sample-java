#!/usr/bin/env groovy

import hudson.model.*
import hudson.EnvVars
import groovy.json.JsonSlurperClassic
import groovy.json.JsonBuilder
import groovy.json.JsonOutput
import java.net.URL
import org.jenkinsci.plugins.gitclient.Git;
import org.jenkinsci.plugins.gitclient.GitClient;
 
try {
node {
 stage('Pre-Requirestion'){
  properties([[$class: 'BuildDiscarderProperty',strategy: [$class: 'LogRotator', numToKeepStr: '5']],disableConcurrentBuilds(),])
  //GitClient git = Git.with(listener, environment).in(repository).using(gitExe).getClient();
  echo("Hello Req")
  echo("All environments=${env}")
  echo("\u2600 BUILD_URL=${env.BUILD_URL}")
  def workspace = pwd()
  echo("\u2600 workspace=${workspace}")
  mailnotification = "iamvj@gmail.com"
  javaversion = 'JDK-1.8'
  echo("\u2600 Java version=${javaversion}")
  branchname = "${env.BRANCH_NAME}"
  echo("\u2600 Branch Name=${branchname}")
  sh ("git config --global user.email 'some@email.com'")
  sh ("git config --global user.name 'jenkins'")
  //giturl= "${env.URL}"
  //def repositoryUrl = scm.userRemoteConfigs[0].url 
  //echo("\u2600 Current Git URL=${giturl}")
  //echo("git url=${repositoryUrl}")
  Jenkins.instance.getAllItems(hudson.model.AbstractProject.class).each {
  scm = it.getScm()
  if(scm instanceof hudson.plugins.git.GitSCM)
  {
    println scm.getUserRemoteConfigs()[0].getUrl()
  }
}
println "Done"
  
 }
 stage('Checkout'){
  echo "Git Checkout"
  checkout scm
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
