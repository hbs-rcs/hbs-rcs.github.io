[![Build Status](https://travis-ci.org/hbs-rcs/hbs-rcs.github.io.svg?branch=source)](https://travis-ci.org/hbs-rcs/hbs-rcs.github.io)

# RCS Blog Usage and Maintenance Notes

Authors: ([Bob Freeman](https://github.com/devbioinfoguy)), Ista Zahn,
Victoria Liublinska, Xiang Ao, and Andrew Marder


## Making a new post

This repository contains blog posts documenting various statistical
and technical issues that researchers at HBS frequently encounter.
To make a new post clone the Git repository at https://github.com/hbs-rcs/hbs-rcs.github.io
and then follow the steps below.

There are two supported workflows for authoring a new post, as detailed below.

1. Create a post using RStudio / blogdown.
   1. Install the `blogdown` R package if you have not done so already
   2. In RStudio click *Addins => New Post*, or run `blogdown::new_post()` in R
   3. Write the content of your post
   4. Click the "Knit" button in Rstudio or run `rmarkdown::render("index.Rmd")` to render your post
   5. Click *Addins => Serve Site* in RStudio or run `blogdown::serve_site()` to preview your post

2. If you do not wish to use the R `blogdown` package you can instead create a post manually.
   1. Make a directory for your post in `content/post` following the year-name convention used in previous posts
   2. Create `index.html` or `index.md` file in your post directory and add title, author, and date metadata using
      an existing post as a template
   3. Write the content of your post.

Once you have authored a new post you can commit your changes in Git and push them to the github repository.
If you push directly to the default branch your post will be added directly to the website. If you push
to a different branch you can submit a pull request and ask for a review before merging and making your post 
live on our website.


## Brief Maintainer Notes

The site uses [blogdown](https://bookdown.org/yihui/blogdown/) to
generate the site and [GitHub Pages](https://pages.github.com/) to
host the site. Rendering is done using TravisCI. Blogdown in turn 
relies on the Hugo static site generator to render the website.

The `source` branch is the default. It contains the content and blogdown/Hugo configuration and themes.
Commits to the `source` branch trigger a TravisCI build as configured in the `.travis` config file.
Travis builds the site using `blogdown`/`Hugo` and pushes to the `master` branch. Permission to do this is
granted by a Github PAT in the travis.com settings. This token expires once a year and needs to be regenerated
and updated in the travis.com settings.

NOTE: These materials and the files within are governed by the Creative Commons Attribution license (CC BY 4.0).
