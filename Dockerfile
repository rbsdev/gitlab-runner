FROM gitlab/gitlab-runner:ubuntu

ADD /register.sh /
ADD /copy-cert-file.sh /

ENTRYPOINT ["/usr/bin/dumb-init", "/copy-cert-file.sh"]

CMD ["run", "--user=gitlab-runner", "--working-directory=/home/gitlab-runner"]
