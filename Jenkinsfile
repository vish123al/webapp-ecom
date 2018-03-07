def gitCommit() {
    sh "git rev-parse HEAD > GIT_COMMIT"
    def gitCommit = readFile('GIT_COMMIT').trim()
    sh "rm -f GIT_COMMIT"
    return gitCommit
}

node {

    // Checkout source code from Gitv.....
   
    stage 'Checking out scm for repository'
    checkout scm
   stage '(TEST) unit/integration testing'
     sh 'curl -X POST -H "Content-Type: application/json" http://10.0.1.85:8080/v2/apps -d@msql.json'
    //sh 'make test'
    stage '(BUILD) building image'
    sh "docker build -t vishaldenge/php10:${gitCommit()} ."
    sh "docker login -u vishaldenge -p 'v!sh@l123' "
    stage '(PUBLISH) Pushing the image '
    sh "docker push vishaldenge/php10:${gitCommit()}"
     stage '(DEPLOY) Deploying the container'
     //sh 'curl -X POST -H "Content-Type: application/json" http://10.0.1.85:8080/v2/groups -d@marathon2.json'
   // sh 'curl -X POST -H "Content-Type: application/json" http://10.0.1.85:8080/v2/apps -d@marathon.json'
   // sh 'curl -X POST -H "Content-Type: application/json" http://10.0.1.85:8080/v2/apps -d@msql.json'
   marathon(
     url: 'http://10.0.1.85:8080',
      forceUpdate: true,
       filename: 'marathon.json',
        appId: 'blog',
        docker: "vishaldenge/php10:${gitCommit()}".toString()
    )
   
        stage 'Collect test reports'
        
        sh 'touch reports/*.xml'
       junit '**/reports/*.xml'
       // step([$class: 'JUnitResultArchiver', testResults: '**/reports/*.xml'])
       stage 'Clean up'
       
                         
   

}
