# Miguel Madrid-Mencía | mimame.dev

Personal website of **Miguel Madrid-Mencía**, a Senior Backend & Cloud Engineer specializing in Bioinformatics and AI Systems. This site showcases professional experience (CV), technical expertise, publications, and portfolio projects.

## Project Overview

Built using [Jekyll](https://jekyllrb.com/) and based on the [Academic Pages](https://github.com/academicpages/academicpages.github.io) template. The site is optimized for professional impact, featuring a data-driven CV and an engineering-focused workflow description.

### Key Features
- **Data-Driven CV:** The core of the site is managed via `_data/cv.json`, ensuring high-fidelity data portability.
- **Expertise-Centric Navigation:** Prioritized access to publications, expertise, and research portfolios.
- **Reproducible Environment:** Development workflow managed entirely via [Nix](https://nixos.org/).

## Development Workflow

### Prerequisites
- [Nix](https://nixos.org/)

### Setup
Install Ruby dependencies and initialize pre-commit hooks:
```bash
nix-shell --run "bundle install"
nix-shell -p prek --run "prek install"
```

### Running Locally
To serve the site locally with auto-reload:
```bash
nix-shell --run "bundle exec jekyll serve --incremental"
```
Once running, the site is available at `http://localhost:4000`.

### Maintenance
- **Cleaning Cache:** If the site does not update as expected, clean the cache using:
  ```bash
  nix-shell --run "bundle exec jekyll clean"
  ```
- **Updating Content:**
  - **CV & Expertise:** Modify `_data/cv.json`.
  - **Portfolio:** Add or edit markdown files in `_portfolio/`.
  - **Publications:** Add or edit markdown files in `_publications/`.

## Directory Structure
- `_data/cv.json`: Primary source of truth for the CV and Expertise pages.
- `_pages/`: High-level site pages (About, CV, Expertise, Workflow, etc.).
- `_portfolio/`: Markdown files for project showcases.
- `_publications/`: Markdown files for research papers and patents.
- `_sass/`: SCSS styling modules.

## License
MIT License. Based on the [Academic Pages](https://github.com/academicpages/academicpages.github.io) template (Copyright (c) 2016 Michael Rose).
