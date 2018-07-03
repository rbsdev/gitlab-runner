GitLab Runner
=============

This is an extension of image `gitlab/gitlab-runner`.

Usage
-----

```
docker run -d --name gitlab-runner --restart always \
  -e GITLAB_SERVER=your.gitlab.server \
  -e GITLAB_TOKEN=your-server-token \
  -v /var/run/docker.sock:/var/run/docker.sock \
  rbsdev/gitlab-runner:latest
```

Environment
-----------

A set of environment variables could be used

| Name                 | Default    |
|----------------------|------------|
| GITLAB_SERVER        | gitlab.com |
| GITLAB_TOKEN         | empty      |
| COMMA_SEPARATED_TAGS | docker     |
| GIT_SSL_NO_VERIFY    | empty      |
