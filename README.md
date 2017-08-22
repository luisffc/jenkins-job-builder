# Jenkins Job Builder docker image

This is the [Jenkins Job Builder](https://github.com/openstack-infra/jenkins-job-builder) container with [Jenkins Jobs Addons](https://jenkins-job-builder-addons.readthedocs.org/en/latest/).

### Building
Before you build it, set Jenkins URL, user and token into base-config.ini

```bash
docker build -t jenkins-job-builder jenkins-job-builder .
```

### Checking it works
```bash
docker run -it --rm jenkins-job-builder --volume "$PWD":/opt/jenkins-job jenkins-jobs --version
```

### Using an alias
```bash
alias jjb='docker run -it --rm jenkins-job-builder --volume "$PWD":/opt/jenkins-job jenkins-jobs'
```

Now you can just run `jjb --version`

### Validating a job definition
```bash
jjb test my-job.yml
```

### Applying a job definition to Jenkins
```bash
jjb update my-job.yml
```
