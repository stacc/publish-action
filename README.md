# Stacc Publish - Action for GitHub

**DEPRECATED: Use https://github.com/stacc/setup-stacc-cli instead **

> This repository is a work in progress

A GitHub Action for publishing modules and projects to the Stacc Registry.

## Usage

In order to publish your module or project to the Stacc Registry, add the following step to your GitHub workflow.

```yaml
- steps:
    - name: Checkout
      uses: actions/checkout@v2
    - name: Publish to Stacc Registry
      uses: stacc/publish-action@v1
      with:
        version: 0.1.0 # version of your module, defaults to ""
        clientId: ${{ secrets.STACC_CLIENT_ID }} # Stacc account client ID
        clientSecret: ${{ secrets.STACC_CLIENT_SECRET }} # Stacc account client secret
        moduleDir: ./module # Stacc module, defaults to .
```

The version of the action is pinned to the CLI version.
