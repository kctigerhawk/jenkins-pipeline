podTemplate(label: 'docker-node', containers: [
    containerTemplate(name: 'jnlp', image: 'jenkinsci/jnlp-slave:2.62-alpine', args: '${computer.jnlpmac} ${computer.name}'),
]) {
    node('docker-node') {
        container('jnlp') {
            stage('Build') {
               sh "echo building"
               //docker.build 'pipeline-jenkins-master'
            }
        }
    }
}
