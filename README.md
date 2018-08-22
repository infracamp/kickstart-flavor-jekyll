
# kickstart-flavor jekyll :: Jekyll Github Pages development container

Jekyll is a static website generator used by github pages. This container
lets you on the fly develop websites.

- [Jekyll Documentation](https://jekyllrb.com/docs/home/)
- [GitHub Pages Docs](https://pages.github.com/)
- [Skel Project](https://github.com/infracamp/kickstart-skel/blob/master/jekyll-base/)

- [Dockerhub page](https://hub.docker.com/r/infracamp/kickstart-flavor-jekyll/)
    - [Tags available](https://hub.docker.com/r/infracamp/kickstart-flavor-jekyll/tags/)
    - [Build details](https://hub.docker.com/r/infracamp/kickstart-flavor-jekyll/builds/)

Jekyll comes with an Apache webserver. So you can deploy this container as 
Static homepage not only for github-pages but as standalone server too. 

## Container specific `.kick.yml`-directives

Demo kick.yml content:

```
command:
  build:
    - "jekyll build -s /opt/docs -d /var/www/html"
    
  dev:
    - "jekyll watch -s /opt/docs -d /var/www/html --force_polling"
```

## Skeleton *([Code](https://github.com/infracamp/kickstart-skel/tree/master/jekyll-base))*

Install a demo page (including config-file etc.) from [kickstart-skel](http://github.com/infracamp/kickstart-skel)

```
./kickstart.sh --skel jekyll-base
```

