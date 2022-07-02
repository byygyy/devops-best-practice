# How to trigger ansible tower template job by API

## create a personal token
curl -u username:password -k -X POST https://192.168.3.8/api/v2/tokens/

```
robin@home-pc1 MINGW64 ~
$ curl -u admin:admin -k -X POST https://192.168.3.8/api/v2/tokens/
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100   485  100   485    0     0    245      0  0:00:01  0:00:01 --:--:--   245{"id":1,"type":"o_auth2_access_token","url":"/api/v2/tokens/1/","related":{"user":"/api/v2/users/1/","activity_stream":"/api/v2/tokens/1/activity_stream/"},"summary_fields":{"user":{"id":1,"username":"admin","first_name":"","last_name":""}},"created":"2020-05-13T11:36:59.190596Z","modified":"2020-05-13T11:36:59.228747Z","description":"","user":1,"token":"r4kE5hl59cgGitTJI35I4odSBfuqGX","refresh_token":null,"application":null,"expires":"3019-09-14T11:36:59.179627Z","scope":"write"}
```

## call ansible tower template job with parameters by API
curl -k -X POST -H "Content-Type: application/json" -H "Authorization: Bearer r4kE5hl59cgGitTJI35I4odSBfuqGX"   --data '{"extra_vars":{ "ansible_remote_tmp": "/tmp/","remote_user": "wladm","hosts_group": "server_names","shell_command": "ps -ef|grep java","stdout_or_stdout_lines": "stdout_lines"}}' https://192.168.3.8/api/v2/job_templates/7/launch/

## monitor the job status
curl -k -X GET -H "Content-Type: application/json" -H "Authorization: Bearer r4kE5hl59cgGitTJI35I4odSBfuqGX"  https://192.168.3.8/api/v2/jobs/49/

## once job complate show the log
curl -k -X GET -H "Content-Type: application/json" -H "Authorization: Bearer r4kE5hl59cgGitTJI35I4odSBfuqGX"  https://192.168.3.8/api/v2/jobs/49/stdout/

## refer to 
**ansible tower document about token and API**: https://www.ansible.com/blog/summary-of-authentication-methods-in-red-hat-ansible-tower

**how to use curl**: https://gist.github.com/subfuzion/08c5d85437d5d4f00e58

**ansible-tower 3.5.1 document**: https://docs.ansible.com/ansible-tower/3.5.3/html/towerapi/api_ref.html

## if anyquestion can send mail to me lihuanhuan@outlook.com
