# artifact-upload-in-artifactory

This action will enable you to upload artifacts to any Artifactory location using the user credentials stored as secret in Github Repository.

# Pre-Requisites

You need to create the following 2 secrets in the Github Repository to provide the user credentails to authenticate with the artifactory:-

USER_NAME --> Username you want to use to authenticate
PASSWORD --> Password of the provided user

You need to declare the following environment variable to provide details of the artifact you want to upload and the target registry  you will store the artifact:-

FILE --> The artifact file path
REGISTRY --> Target artifactory registry location to upload in

# Usage
```yaml
on: push
name: push Artifacts to Artifactory
jobs:
  push-artifacts:
    name: push Artifacts to Artifactory
    runs-on: ubuntu-latest
    steps:
      - name: Upload Jar in Artifactory
        env:
          USER_NAME: ${{ secrets.ARTIFACTORY_USERNAME }}
          PASSWORD: ${{ secrets.ARTIFACTORY_PASSWORD }}
          FILE: "build/libs/gs-gradle-0.1.0.jar"
          REGISTRY: "http://<Artifactory-hostname-with-port>/artifactory/gradle-build/app1.jar"
        uses: trideepnag1911/artifact-upload-in-artifactory@main

```
