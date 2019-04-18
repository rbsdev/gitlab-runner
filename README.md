GitLab Runner
=============

This is an extension of image `gitlab/gitlab-runner`.

Supported tags and respective `Dockerfile` links
------------------------------------------------

- [`latest`, `ubuntu` (*Dockerfile*)](http://github.com/rbsdev/gitlab-runner/blob/develop/Dockerfile)

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

| Name                 | Default    | Description                                                         |
|----------------------|------------|---------------------------------------------------------------------|
| GITLAB_SERVER        | gitlab.com | Gitlab server to connect                                            |
| GITLAB_TOKEN         | empty      | Token required by server                                            |
| COMMA_SEPARATED_TAGS | docker     | Tags to register the runner                                         |
| GIT_SSL_NO_VERIFY    | empty      | Environment variable                                                |
| SRC_VOLUME           | empty      | Source directory to mount volume (requires to fill DST_VOLUME)      |
| DST_VOLUME           | empty      | Destination directory to mount volume (requires to fill DST_VOLUME) |
