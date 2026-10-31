# Editing Jane's website

This is the existing Quarto website. Edit the source files, then check the local preview. Quarto generates the browser-ready HTML in `docs/`; edit the source rather than that generated HTML.

## Where things live

| File | What it controls |
| --- | --- |
| `_quarto.yml` | Site title, menu labels and destinations, footer, shared rendering options |
| `_brand.yml` | Named colours and typography |
| `custom.scss` | Quarto / Bootstrap theme settings |
| `styles.css` | Homepage layout, spacing, responsive breakpoints, link and focus styles |
| `index.qmd` | Homepage text, portrait photograph, sections A–E |
| `about.qmd` | Background, qualifications, interests, profile links |
| `data-projects.qmd` | Data portfolio overview |
| `projects/msc-space-plasma.qmd` | MSc project details and references |
| `writing.qmd` | Published fiction, manuscripts, earlier creative notes |
| `ai-energy.qmd` | Explained and Watch categories |
| `posts/` | Existing data-blog posts and saved figure metadata |
| `side-project.qmd` | Preserved earlier side-project notes |
| `filters/figure-alt.lua` | Descriptive alt text for saved analysis figures |

## Three useful concepts

- The block between `---` lines at the top of a `.qmd` file is page configuration. Text below it is page content.
- In a menu, `text` is the visible label and `href` is the destination. The website title already links to the homepage.
- A block such as `::: {.home-hero}` groups content and attaches a CSS class. Its appearance is defined by `.home-hero` in `styles.css`.

The homepage uses one large heading (`#`) and section headings (`##`). Keep that hierarchy when editing. HTML comments mark its five sections and are invisible to visitors.

## Preview and build

From the project folder:

```powershell
quarto preview --port 4321
```

Open http://localhost:4321/. Save a source edit to refresh the preview; press Ctrl+C in the terminal to stop it. `quarto render` rebuilds the entire site using saved computational results where available. Previewing an edited computational post can run its Python code and requires the original dependencies, including `palmerpenguins` for the penguin post.

## Content still to add

- The homepage uses `images/jane-astronaut.png`, with descriptive alt text and a responsive 4:5 crop set by `.portrait-photo` in `styles.css`. The original photo is unchanged.
- Final personal introduction and background / qualification details.
- MSc summary, date, institution, methods, findings, limitations, and public source links.
- Book synopsis, publication details, direct book link, and manuscript statuses.
- AI–energy articles and Watch entries, with original sources, event dates, publication dates, and a distinction between evidence and interpretation.

Future AI–energy articles can live under `ai-energy/explained/` and `ai-energy/watch/`, linked from the two existing categories. No newsletter or subscription service is active. Nothing in this revision publishes the site.
