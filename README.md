
# kickstart-flavor jekyll :: Jekyll Github Pages development container

Jekyll is a static website generator used by github pages. This container
lets you on the fly develop websites.

- [Jekyll Documentation](https://jekyllrb.com/docs/home/)
- [GitHub Pages Docs](https://pages.github.com/)
- [Skel Project](https://github.com/infracamp/kickstart-skel/blob/master/jekyll-base/)

- [Dockerhub page](https://hub.docker.com/r/infracamp/kickstart-flavor-jekyll/)
    - [Tags available](https://hub.docker.com/r/infracamp/kickstart-flavor-jekyll/tags/)
    - [Build details](https://hub.docker.com/r/infracamp/kickstart-flavor-jekyll/builds/)


## Container specific `.kick.yml`-directives

| Key | Default | Description |
|----------------|----------------|---------------------|
| `page_dir`     | `/opt/docs`          | The jekyll site root path |
| `out_dir`      | `/tmp/_build`        | The output directory |

## Skeleton *([Code](https://github.com/infracamp/kickstart-skel/tree/master/jekyll-base))*

Install a demo page (including config-file etc.) from [kickstart-skel](http://github.com/infracamp/kickstart-skel)

```
./kickstart.sh --skel jekyll-base
```

