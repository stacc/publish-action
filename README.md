# Stacc Publish - Pipe for GitHub

> This repository is a work in progress

A GitHub Pipe for publishing modules or projects to the Stacc registry.

## Usage

In order to publish your module or project to the Stacc registry, add the following step to your GitHub Pipeline.

```yaml
- steps:
    - name: Checkout
      uses: actions/checkout@v2
    - name: stacc publish
      uses: stacc/publish-action@v1
      id: publish
      with:
        version: 0.1.0 # version of your module, defaults to ""
        clientId: abcdef # Stacc account client ID
        clientSecret: SECRET # Stacc account client secret
        moduleDir: ./module # Stacc module, defaults to .
```

The version of the pipe is pinned to the CLI version.
