workflow "Add new pull requests to projects" {
  resolves = ["alex-page/add-new-pulls-project"]
  on = "pull_request"
}

action "Adding the pull request to a project" {
  uses = "alex-page/add-new-pulls-project@v0.0.4"
  args = ["Curated Terraform Modules", "To do"]
  secrets = ["GITHUB_TOKEN", "GH_PAT"]
}

workflow "Add new issues to projects" {
  resolves = ["alex-page/add-new-issue-project"]
  on = "issues"
}

action "Adding the issue to a project" {
  uses = "alex-page/add-new-issue-project@v0.0.4"
  args = ["Curated Terraform Modules", "To do"]
  secrets = ["GITHUB_TOKEN", "GH_PAT"]
}
