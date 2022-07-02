node("cm-linux") {
      properties([
        pipelineTriggers([
            githubPush(),
            pollSCM('*/11 * * * *'),
            cron('H/10 * * * *')
        ]),
      parameters([
        string(name:'NODENAME', defaultValue:'cm-linux', description:'input the node name'),
        string(name:'USERID', defaultValue:'', description:'input or select your userid'),
        string(name:'USERNAME', defaultValue:'', description:'input or select your username'),
        password(name:'USERPASSWORD', defaultValue:'', description:'input or select your password'),
        string(name:'EMAIL', defaultValue:'', description:'input or select your email'),
        string(name:'ADDR', defaultValue:'', description:'input or select your email'),
      ])
    ])

    stage('Build'){
      echo 'I am doing the Test'
    }
}