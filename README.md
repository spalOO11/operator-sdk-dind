# operator-sdk-dind
A Docker-in-Docker image that includes Operator SDK to use with GitLab/CI.

## Example
```.gitlab-ci.yml
build:
  stage: build
  image: spalOO11/operator-sdk-docker:19.03.1

  script:
    - ansible --version
```
