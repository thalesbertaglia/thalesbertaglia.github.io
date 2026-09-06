# Thales Bertaglia

This directory contains the Jekyll source for the public website. It uses the parent repository's BibTeX bibliography, teaching page, and publication previews while keeping the site's layouts, content, and dependencies small.

## Local preview

From the repository root:

```sh
BUNDLE_GEMFILE=_redesign/Gemfile bundle install
BUNDLE_GEMFILE=_redesign/Gemfile bundle exec jekyll serve \
  --source _redesign \
  --config _redesign/_config.yml \
  --destination _redesign/_site \
  --drafts \
  --port 4010
```

Open <http://127.0.0.1:4010/>.

## Add an update

Copy `_redesign/_templates/update.md` into `_redesign/_updates/`. Name it `YYYY-MM-DD-short-description.md`, replace the example text, and keep `featured: true` when it should be eligible for the homepage.

Updates are short Markdown entries displayed directly in the chronological list. They do not need titles or categories.

## Add a piece of writing

Copy `_redesign/_templates/writing.md` into `_redesign/_drafts/` while working on it. Draft filenames do not need a date. The local preview command above includes drafts.

To publish, move the finished file into `_redesign/_posts/` and name it `YYYY-MM-DD-title.md`. Published pieces receive their own URL, appear on the Writing page, and enter the Atom feed.

## Publications and teaching

Publication metadata comes from `_bibliography/papers.bib`. Teaching content comes from `_pages/teaching.md`. These remain the canonical files for those sections.

## Production build

```sh
JEKYLL_ENV=production BUNDLE_GEMFILE=_redesign/Gemfile bundle exec jekyll build \
  --source _redesign \
  --config _redesign/_config.yml \
  --destination _site

_redesign/script/verify _site production
```

The GitHub Actions workflow performs the same production build, verifies it, checks internal links, and publishes `_site` to the `gh-pages` branch on pushes to `master` or `main`. Pull requests only build and validate; they do not deploy.

Google Analytics is included only in production builds.
