# Samsara Website

Samsara uses Jekyll and GitHub pages for its website.


## Usage

### 1. Install dependencies

The website is built on Jekyll and uses its built-in SCSS compiler to generate our CSS. Before getting started, you'll need to install the Jekyll gem:

```bash
$ gem install jekyll
```

**Windows users:** Windows users have a bit more work to do, but luckily [@juthilo](https://github.com/juthilo) has your back with his [Run Jekyll on Windows](https://github.com/juthilo/run-jekyll-on-windows) guide.


### 2. Running locally

To see your Jekyll site, start a Jekyll server. In Terminal, from the `/samsara.github.io` directory (or whatever your Jekyll site's root directory is named):

```bash
$ bundle install
$ bundle exec jekyll serve
```

Open <http://localhost:4000> in your browser, and voilà.

### 4. Serving it up

If you host your code on GitHub, you can use [GitHub Pages](https://pages.github.com) to host your project.

1. Fork this repo and switch to the `gh-pages` branch.
  1. If you're [using a custom domain name](https://help.github.com/articles/setting-up-a-custom-domain-with-github-pages), modify the `CNAME` file to point to your new domain.
2. If you're not using a custom domain name, **modify the `baseurl` in `_config.yml`** to point to your GitHub Pages URL. **Be sure to include the trailing slash.**
3. Done! Head to your GitHub Pages URL or custom domain.

No matter your production or hosting setup, be sure to verify the `baseurl` option file and `CNAME` settings. Not applying this correctly can mean broken styles on your site.

### 5. To update the Documentation

The master copy of the documentation contained in `docs/` is the
homonym folder of the **samsara/samsara** project. So if you want to
update the docs please update it in the main samsara project, then to
publish the documentation copy the new version of the documents here
with:

    ./bin/update-docs.sh ../samsara/

and commit the changes.
