#!/usr/bin/env groovy
 
import hudson.model.*
import hudson.EnvVars
import groovy.json.JsonSlurperClassic
import groovy.json.JsonBuilder
import groovy.json.JsonOutput
import java.net.URL
pipeline { 
 agent none
 stages {
  stage('Checkout')
  {
    echo "\u2600 BUILD_URL=${env.BUILD_URL}"
  }
  stage('Build')
  {
    def workspace = pwd()
    echo "\u2600 workspace=${workspace}"
  }
  stage('Vaildate')
  {
   echo "Hello"
  }
 }
}
