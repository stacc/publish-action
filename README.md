# Stacc Publish - Pipe for GitHub

> This repository is a work in progress

A GitHub Pipe for publishing modules or projects to the Stacc registry.

## Usage

In order to publish your module or project to the Stacc registry, add the following step to your GitHub Pipeline.

```yaml
- step:
    - name: Publish to Stacc Registry
      id: stacc-publish
      uses: stacc/publish-action@v1
      with:
        VERSION: 0.1.0 # version of your module
        CLIENT_ID: abcdef # Stacc account client ID
        CLIENT_SECRET: SECRET # Stacc account client secret
        MODULE_DIR: ./module
```

The version of the pipe is pinned to the CLI version.
