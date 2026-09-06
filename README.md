# Thales Bertaglia

This repository contains the self-contained Jekyll source for the public website. The previous al-folio site is preserved under `_archive/previous-site/` and is not included in builds.

## Local preview

From the repository root:

```sh
bundle install
bundle exec jekyll serve --drafts --port 4010
```

Open <http://127.0.0.1:4010/>.

## Add an update

Copy `_templates/update.md` into `_updates/`. Name it `YYYY-MM-DD-short-description.md`, replace the example text, and keep `featured: true` when it should be eligible for the homepage.

Updates are short Markdown entries displayed directly in the chronological list. They do not need titles or categories.

## Add a piece of writing

Copy `_templates/writing.md` into `_drafts/` while working on it. Draft filenames do not need a date. The local preview command above includes drafts.

To publish, move the finished file into `_posts/` and name it `YYYY-MM-DD-title.md`. Published pieces receive their own URL, appear on the Writing page, and enter the Atom feed.

## Publications and teaching

Publication metadata comes from `_bibliography/papers.bib`. Teaching content lives in `teaching.md`, and publication preview images live in `assets/img/publication_preview/`. These are ordinary files in this repository; the active site has no symlinked or parent-directory dependencies.

## Production build

```sh
JEKYLL_ENV=production bundle exec jekyll build --destination _site

script/verify _site production
```

The GitHub Actions workflow performs the same production build, verifies it, checks internal links, and publishes `_site` to the `gh-pages` branch on pushes to `master` or `main`. Pull requests only build and validate; they do not deploy.

Google Analytics is included only in production builds.
