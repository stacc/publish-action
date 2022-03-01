# Stacc Publish - Pipe for GitHub

> This repository is a work in progress

A GitHub Pipe for publishing modules or projects to the Stacc registry.

## Usage

In order to publish your module or project to the Stacc registry, add the following step to your GitHub Pipeline.

```yaml
- step:
    - name: Publish to Stacc Registry
      id: stacc-publish
      uses: actions/stacc-publish@v1
      with:
        VERSION: 0.1.0 # version of your module
        CLIENT_ID: abcdef # Stacc account client ID
        CLIENT_SECRET: SECRET # Stacc account client secret
```

The version of the pipe is pinned to the CLI version.

## Releasing

A release can be made by running the commands shown below.

```sh
$ make version TAG=1.2.3
Using image staccpipes/publish and tag 1.2.3
Replacing image version in pipe.yml
sed -i "s,\(image:\).*\(# replace\),\1 staccpipes/publish:1.2.3 \2,g" pipe.yml
$ git add .
$ git commit -m "Release v1.2.3"
$ git tag v1.2.3
```

## Links

- [Write a pipe for Bitbucket Pipelines](https://support.atlassian.com/bitbucket-cloud/docs/write-a-pipe-for-bitbucket-pipelines/)
- [github.com/stacc/cli](https://github.com/stacc/cli)
- [github.com/stacc/paas](https://github.com/stacc/paas)
- [azure-storage-deploy](https://bitbucket.org/microsoft/azure-storage-deploy/src/master/pipe/pipe.sh)
