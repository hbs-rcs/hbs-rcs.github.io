# GitHubIO Pages for RCS Blog Site

Oct 23, 2021

Authors: Bob Freeman ([devbioinfoguy](https://github.com/devbioinfoguy)), Ista Zahn,
Liublinska, Xiang Ao, and Andrew Marder


## Overview:
This blog site uses the Wowchemy framework, Academic template/them, Hugo static site generator,
and TravisCI to render HTML content from various formats into HTML, which is then displayed
via GitHub Pages.

A couple of things to note:
- This seems rather fragile. See [Issue 25](https://github.com/hbs-rcs/hbs-rcs.github.io/issues/25) for a brief description of all the problems
- The TravisCI automatic engine will only render the site to GHPages if changes are pushed to 
the `source` branch. Thus, if you wish to author on any other branch, YOU MUST MERGE TO `SOURCE`
if you wish to have your posts rendered, available, and displayed.
- To follow on the previous point, the main, default branch for the repo is `source`. The rendered (GHPages) branch
is `master`. This latter branch is overwritten with every build that is triggered by a commit to `source`.
- Content goes only in particular directories. Presently it is `content/post/` or another neighboring folder, depending on content type.
- There's much updating that could and should happen, both to content, repo config on GH's site, 
and the content/templating/config files. It's a hot mess. I'll add these to the repo as issues.

To author & post an entry (publish & render):
- (For now) Write your blog entry using R/RBlogDown, Markdown, or plain HTML. And store in the folder `content/post`. Probably a good idea to name the file in `YYYY-MM-DD-Title` format, using underscores (`_`) in place of space characters.
- If the original post format is not Mardown or HMTL, please use your authoring tool to render to these formats.
- Post your commit to the `source` branch. If working on another branch and you wish this to post publicly, merge your branch (post-commit) into `source`.
- TBD: unclear if images can stay in same folder (`content/post/`) as rendered files or if they need to be moved to a different folder.
- Spread the word about your new post!

-Bob

NOTE: These materials and the files within are governed by the Creative Commons Attribution license (CC BY 4.0).
