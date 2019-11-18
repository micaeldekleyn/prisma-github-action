# Github Action for Prisma

This Action wraps the [Prisma Framework](https://prisma.io) to enable common Prisma commands.

## Usage
An example workflow to deploy a project with prisma:

```
on:
  push:
    branches:
      - master
name: Deploy master branch
jobs:
  deploy:
    name: deploy
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@master
    - name: npm install
      uses: actions/npm@master
      with:
        args: install
    - name: prisma deploy
      uses: micaeldekleyn/prisma-github-action@master
      with:
        args: deploy
      env:
        PRISMA_ENDPOINT: ${{ secrets.PRISMA_ENDPOINT }}
        PRISMA_SECRET: ${{ secrets.PRISMA_SECRET }}
```

## License

The Dockerfile and associated scripts and documentation in this project are released under the Apache-2 license.
