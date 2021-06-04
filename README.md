# How to customize for your own github pages setup

Take a look at the .env file to set the branches in use.  The two branches are the one for the source of the site and the branch to publish the site to.



The way this system works is that it runs statocles in a github action and pushes the rendered site to a different branch on the same repository.  

You'll want to change the PUBLISH_BRANCH env var and the branch used in the on: push: action at the top of the yaml file.

Then just customize the statocles site in the site/ directory!

# How to update pages

carton install
carton exec ./build.pl

view site in rendered/

This will likely not load the CSS properly since it's expecting to be in a webroot but that might be fixable with the statocles configuration and I'm just not sure how.

