#!/usr/bin/env groovy
 
import hudson.model.*
import hudson.EnvVars
import groovy.json.JsonSlurperClassic
import groovy.json.JsonBuilder
import groovy.json.JsonOutput
import java.net.URL
pipeline { 
 def workspace = pwd()
 agent none
 stages {
  stage('Checkout')
  {
   steps {
    echo "\u2600 BUILD_URL=${env.BUILD_URL}"
   }
  }
  stage('Build')
  {
   steps {
    echo "\u2600 workspace=${workspace}"
   }
  }
  stage('Vaildate')
  {
   steps{
   echo "Hello"
   }
  }
 }
}
