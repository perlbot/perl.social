# How to customize for your own github pages setup

The way this system works is that it runs statocles in a github action and pushes the rendered site to a different branch on the same repository.  You'll want to set the branch being rendered to in the repository settings in github.  Repository Settings -> Pages -> branch.  This way you can have the project repository in `main` or `master`, the site source in `statocles` and the actual site in the `published` branch.

Edit the workflow file .github/workflows/build_and_publish.yaml

You'll want to change the PUBLISH_BRANCH env var and the branch used in the on: push: action at the top of the yaml file.

Then just customize the statocles site in the site/ directory!

# How to update pages

carton install
carton exec ./build.pl

view site in rendered/

This will likely not load the CSS properly since it's expecting to be in a webroot but that might be fixable with the statocles configuration and I'm just not sure how.

