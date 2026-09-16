# Magic Patterns UI Generation Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Generate and preserve a complete responsive PinSpot UI reference in Magic Patterns while keeping the first classroom implementation focused on semantic HTML.

**Architecture:** Magic Patterns supplies the visual reference, not the production architecture. The reference covers the complete single-page experience and its important states; the repository records the resulting project link and implementation notes. Learners will reproduce the structure progressively in `index.html`, then add styling and behavior in later lessons.

**Tech Stack:** Magic Patterns, semantic HTML5, plain CSS, vanilla JavaScript, Git

**Spec:** `docs/superpowers/specs/2026-09-15-magic-patterns-ui-design.md`

## Global Constraints

- The classroom implementation uses only HTML, CSS, and JavaScript.
- HTML structure is the immediate teaching priority.
- The generated interface must be reproducible without React, Tailwind, component libraries, a backend, authentication, or external music APIs.
- The experience is a single continuous page; **Start Listening** scrolls to Discover.
- The design may be inspired by Pinterest and Spotify but must not copy either product's logo or exact layout.
- Desktop, mobile, album-modal, active-player, empty-search, missing-cover, and unavailable-track states are required.

---

### Task 1: Generate the Complete PinSpot Concept

**Files:**
- Read: `docs/superpowers/specs/2026-09-15-magic-patterns-ui-design.md`
- No repository files modified

**Interfaces:**
- Consumes: the approved UI specification
- Produces: one Magic Patterns project containing the full PinSpot page and required states

- [ ] **Step 1: Open Magic Patterns and start a new design**

Use the existing signed-in browser session when available. Create a new project named `PinSpot – Music Discovery for Learners`.

- [ ] **Step 2: Submit the complete generation prompt**

Submit this prompt as one coherent request:

```text
Design a complete responsive single-page website named PinSpot. PinSpot is a Grade 10 educational web-development project that combines Pinterest-style visual music discovery with Spotify-inspired listening interactions, while keeping an original identity.

The first screen is a polished landing hero with a sticky navigation bar, original PinSpot text logo, Discover, Genres and Favourites links, and search. Use a near-black charcoal background, layered dark-grey surfaces, off-white text, vivid music-green primary actions, and small coral-red and warm-cream accents. Use bold geometric headings, clean body text, rounded surfaces and subtle shadows.

The hero needs a strong headline about discovering music visually, short supporting text, a dominant pill-shaped “Start Listening” button, and an asymmetrical Pinterest-like collage of varied album-cover cards. The button must scroll to the Discover section on the same page.

Below the hero, add a Discover heading, album/artist search, horizontally scrollable genre chips, and a responsive masonry album gallery. Cards should vary in height and show cover artwork, album title, artist, genre, favourite button, and a subtle open or play affordance. Include clear hover and keyboard-focus treatments.

Create a centred album-details modal state. On desktop, place large artwork and album metadata on the left and a numbered track list with titles, durations and play buttons on the right. Stack the content on mobile. Highlight the active track in green and show a friendly unavailable-track row.

Add a persistent bottom music player with current cover thumbnail, song, artist, previous, play/pause, next, progress, elapsed and total time, and desktop volume control. Provide a compact mobile layout and an inactive state before a track is selected.

Finish with a short About section stating that students build PinSpot using HTML, CSS and JavaScript, then a simple footer with enough bottom space for the player.

Also represent empty search, missing cover and unavailable track states. Use smooth scrolling, restrained hover lift, image zoom and modal transitions, visible focus indicators, strong contrast, accessible touch targets and reduced-motion-friendly behavior.

Generate both desktop and mobile-responsive views. Keep the implementation concept feasible with semantic HTML5, plain CSS and vanilla JavaScript. Do not require React, Tailwind, external UI libraries, authentication, a backend or external music APIs. Do not copy Pinterest or Spotify logos or exact layouts.
```

- [ ] **Step 3: Wait for the initial generation to finish**

Do not interrupt or revise while Magic Patterns is still generating. Confirm the result renders without a tool error before evaluating it.

- [ ] **Step 4: Check the initial result against the core journey**

Confirm the visible design supports this sequence:

```text
Landing hero → Start Listening → Discover gallery → Album modal → Track selection → Bottom player
```

Expected: all six stages are present in one coherent concept.

### Task 2: Refine Missing or Overcomplicated States

**Files:**
- Read: `docs/superpowers/specs/2026-09-15-magic-patterns-ui-design.md`
- No repository files modified

**Interfaces:**
- Consumes: the Magic Patterns concept from Task 1
- Produces: a revised concept satisfying every acceptance criterion without framework-dependent complexity

- [ ] **Step 1: Compare the generated desktop view with the specification**

Check navigation, hero, CTA, discovery controls, masonry cards, modal, player, About, and footer. Record each missing element before prompting again.

- [ ] **Step 2: Compare the mobile view with the specification**

Check readable typography, compact navigation, scrollable genre chips, reduced gallery columns, stacked modal content, touch targets, and compact player.

- [ ] **Step 3: Request one focused revision if required**

Begin the revision request with the following text, then append the exact missing specification headings and observed problems from Steps 1 and 2 as a bullet list:

```text
Keep the current PinSpot visual direction and revise only the requirements listed below. Preserve the single-page Start Listening scroll, semantic HTML feasibility, responsive mobile treatment, album modal and persistent player. Do not introduce React-only patterns, authentication, backend features or additional pages.
```

- [ ] **Step 4: Verify all required UI states**

Expected states:

```text
desktop landing
mobile landing
album details open
active track playing
no track selected
empty search
missing album cover
unavailable track
favourite inactive and active
keyboard focus visible
```

- [ ] **Step 5: Verify HTML-first feasibility**

Each major block must map cleanly to these semantic elements:

```html
<header>
<nav>
<main>
<section id="hero">
<section id="discover">
<article class="album-card">
<dialog id="album-dialog">
<ol class="track-list">
<aside class="music-player">
<footer>
<audio>
```

Expected: no essential layout or interaction requires a framework-specific component.

### Task 3: Record the Approved Visual Reference

**Files:**
- Create: `docs/references/magic-patterns.md`
- Modify: `README.md`

**Interfaces:**
- Consumes: the final Magic Patterns project URL and the verified state list from Task 2
- Produces: a stable repository reference that teachers and learners can find

- [ ] **Step 1: Create the visual-reference note**

Create `docs/references/magic-patterns.md` with the following structure. Copy the final share URL directly from the generated Magic Patterns project into the Markdown link target:

```markdown
# PinSpot Visual Reference

Magic Patterns project: [Open the PinSpot UI concept](the final URL copied from Magic Patterns)

Generated on: 2026-09-15

## Classroom Use

This design is a visual target, not code for students to copy blindly. Learners first build the semantic structure in `index.html`. CSS and JavaScript are introduced only after the HTML content and hierarchy are understood.

## HTML Map

- Site header and navigation: `<header>` and `<nav>`
- Landing content: `<section id="hero">`
- Album discovery: `<section id="discover">`
- Album card: `<article class="album-card">`
- Album details: `<dialog id="album-dialog">`
- Track list: `<ol class="track-list">`
- Player: `<aside class="music-player">` containing `<audio>`

## Required Reference States

- Desktop and mobile landing page
- Album-details modal
- Active and inactive player
- Empty search
- Missing cover
- Unavailable track
```

- [ ] **Step 2: Add the visual reference to the README**

Insert this section after `## Project Features`:

```markdown
## Visual Reference

The approved interface concept is documented in [the Magic Patterns visual reference](docs/references/magic-patterns.md). Treat it as the destination; lessons will build its HTML structure before adding CSS styling or JavaScript behavior.
```

- [ ] **Step 3: Check the documentation changes**

Run:

```bash
git diff --check
git diff -- README.md docs/references/magic-patterns.md
```

Expected: no whitespace errors; both links use repository-relative paths; the stored URL opens the final Magic Patterns project.

- [ ] **Step 4: Commit the visual reference**

```bash
git add README.md docs/references/magic-patterns.md
git commit -m "docs: add PinSpot visual reference"
```

### Task 4: Final Visual and Repository Verification

**Files:**
- Verify: `README.md`
- Verify: `docs/references/magic-patterns.md`
- Verify: `docs/superpowers/specs/2026-09-15-magic-patterns-ui-design.md`

**Interfaces:**
- Consumes: the generated Magic Patterns concept and repository documentation
- Produces: verified handoff for the HTML-first lesson phase

- [ ] **Step 1: Reopen the shared Magic Patterns URL**

Expected: the final PinSpot concept loads and shows the approved desktop design.

- [ ] **Step 2: Inspect a mobile viewport**

Expected: content remains readable and the gallery, modal, and player adapt without horizontal page overflow.

- [ ] **Step 3: Verify repository state**

Run:

```bash
git status --short
git log -1 --oneline
```

Expected: the workspace is clean and the latest commit is `docs: add PinSpot visual reference`.

- [ ] **Step 4: Push the documentation commit**

```bash
git push origin main
```

- [ ] **Step 5: Confirm the teaching boundary**

Before starting Lesson 1, verify that no generated framework code has replaced `index.html`, `style.css`, or `script.js`. The next classroom task begins with semantic HTML structure only.
