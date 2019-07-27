# Node.js For Github Actions

![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/thonatos/github-actions-nodejs.svg?style=flat-square) ![Docker Pulls](https://img.shields.io/docker/pulls/thonatos/github-actions-nodejs.svg?style=flat-square)

## Dependencies

- Git
- Node.js LTS

## Usage

### github actions

```bash
workflow "Push" {
  on = "push"
  resolves = ["CI"]
}

action "Installation" {
  needs = "Filters for GitHub Actions"
  uses = "thonatos/github-actions-nodejs@v0.1.1"
  args = "npm install npminstall -g && npminstall"
}

action "CI" {
  needs = "Installation"
  uses = "thonatos/github-actions-nodejs@v0.1.1"
  args = "npm run ci"
}

# Filter for master branch
action "Filters for GitHub Actions" {
  uses = "actions/bin/filter@3c0b4f0e63ea54ea5df2914b4fabf383368cd0da"
  secrets = ["GITHUB_TOKEN"]
  args = "branch master"
}
```

### custom actions (with docker image)

```bash
workflow "Push" {
  on = "push"
  resolves = ["CI"]
}

action "Installation" {
  needs = "Filters for GitHub Actions"
  uses = "docker://thonatos/github-actions-nodejs:latest"
  args = "npm install npminstall -g && npminstall"
}

action "CI" {
  needs = "Installation"
  uses = "docker://thonatos/github-actions-nodejs:latest"
  args = "npm run ci"
}

# Filter for master branch
action "Filters for GitHub Actions" {
  uses = "actions/bin/filter@3c0b4f0e63ea54ea5df2914b4fabf383368cd0da"
  secrets = ["GITHUB_TOKEN"]
  args = "branch master"
}
```

## Contributing

### License

The project is [MIT licensed](./LICENSE).
