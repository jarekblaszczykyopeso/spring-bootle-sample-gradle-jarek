dockerNode {
    //insideContainer('yopeso/java-development:spring-1.5.3', "-v /home/jenkins/.m2:/root/.m2") {
    insideContainer('gradle:4.2.1-jdk8', "-v /home/jenkins/.m2:/root/.m2") {
       stage('Build JAR') {
            // Run the maven build
            sh "gradle clean build"
            archiveArtifacts 'build/libs/*.jar'
            //OLD ADRIAN'S VERSION
            //sh "./gradlew clean build"
            //sh "mvn clean verify -Dapplication.version.number=${BUILD_NUMBER} -Dapplication.version.git_branch=${BRANCH_NAME} -Dapplication.version.git_hash=${GIT_COMMIT}"
            //archiveArtifacts 'target/*.jar'
        }
        stage('Publish tests') {
            junit 'build/test-results/**/*.xml'
            jacoco(execPattern: 'target/jacoco-unit/jacoco.exec')
            //OLD ADRIAN'S VERSION
            //junit 'target/surefire-reports/*.xml'
            //jacoco(execPattern: 'target/jacoco-unit/jacoco.exec')
        }
    }
}