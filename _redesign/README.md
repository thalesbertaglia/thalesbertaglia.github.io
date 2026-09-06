# Isolated redesign prototype

This directory is a self-contained Jekyll prototype. The parent Jekyll site ignores underscore-prefixed directories, so building this project does not add routes to the current website.

The prototype reads the parent bibliography, news, teaching page, portrait, and publication previews through relative links. Treat those linked paths as source material and edit the canonical parent files only.

Typography uses the self-hosted, MIT-licensed ET Book webfont. Its license is included at `assets/fonts/ET-BOOK-LICENSE.txt`; the font source is <https://github.com/edwardtufte/et-book>.

## Run locally

From the repository root:

```sh
BUNDLE_GEMFILE=_redesign/Gemfile bundle install
BUNDLE_GEMFILE=_redesign/Gemfile bundle exec jekyll serve \
  --source _redesign \
  --config _redesign/_config.yml \
  --destination _redesign/_site \
  --port 4010
```

Open <http://127.0.0.1:4010/>.

## Build

```sh
BUNDLE_GEMFILE=_redesign/Gemfile bundle exec jekyll build \
  --source _redesign \
  --config _redesign/_config.yml \
  --destination _redesign/_site
```

Use `JEKYLL_ENV=production` only when verifying the production-only Google Analytics include. This prototype has no deployment workflow.

Run the build assertions from the repository root:

```sh
_redesign/script/verify _redesign/_site
```

## Writing and updates

The Writing page separates two publishing modes without introducing visible categories. Longer pieces live in `_posts` and receive their own pages. Short updates come from the parent `_news` collection and are rendered inline in one chronological Updates list. An optional `featured` boolean controls homepage eligibility; missing values remain eligible.

One clearly worded failure fixture lives in `_lab_notes`. This collection is also the safe place for prototype-only short updates because the linked parent `_news` files belong to the current website. The included demonstration essay exercises the writing layout and feed. The existing root sample post is intentionally not imported.

`_fixtures/2026-01-01-layout-test.md` remains a non-output collection item for testing unpublished layouts. Remove the demo post and `_lab_notes` collection before migration.
