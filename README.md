# fetch-pr

`fetch-pr` is a command-line tool that simplifies the process of fetching pull requests from forked repositories. It helps developers quickly fetch and check out PRs, saving time and reducing manual work when contributing to open-source projects or managing forks.

## Usage
1. Clone the repo
2. Run the script and pass the PR string as argument `/path/to/fetch-pr.sh remote:branch`

## Features

- Copy and paste the `origin:branch` from the github interface as an argument to the script.
- Fetch and check out pull requests from forked repositories with a single command.
- Works with multiple remote repositories.
- Handles common git operations to avoid manual intervention.
- Supports fetching by branch name.

## Requirements

- `git` (v2.0+)
