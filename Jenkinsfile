pipeline {
    agent none
    stages {
        stage ('build') {
            agent {label 'slaveone'}
            steps {
                 sh 'pwd'
                 sh 'git clone https://github.com/madhupk963/automation-scripts.git'
                 sh 'sh /home/slaveone/workspace/buildanddeploy/automation-scripts/maven.sh'
                 sh 'scp -r /home/slaveone/workspace/buildanddeploy/build_demo/target/build-demo-1.0.0.war root@172.31.2.54:/opt/tomcat/webapps'
            }
        }
stage ('deploy') {
            agent {label 'slavetwo'}
                steps{
                   sh 'sudo sh /opt/tomcat/bin/startup.sh'
                }
            }
        }
    }
