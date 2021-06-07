# What this does

There's two branches involved, the site itself and the rendered pages.  In this particular repository they are 'main' for the site source code and 'published' for the rendered pages.  These are both customizable.  The github action here will check the .env file for those branches and only do the work when on a PR for the site branch or when things are merged into the site branch.

# How to customize for your own github pages setup

Take a look at the .env file to set the branches in use.  The two branches are the one for the source of the site and the branch to publish the site to.

The way this system works is that it runs statocles in a github action and pushes the rendered site to a different branch on the same repository.  

# How to update pages

carton install

then use ./build.sh to do a test build of the site
and ./serve.sh to start a daemon serving the site up on port 3000 to see the full site in a browser

Past that you can just push to the `$SITE_BRANCH` or make a PR to it to do all other updates
