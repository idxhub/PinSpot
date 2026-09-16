# PinSpot Magic Patterns UI Design

## Goal

Create a polished, responsive single-page PinSpot interface in Magic Patterns. PinSpot combines Pinterest-style visual music discovery with Spotify-inspired listening interactions while retaining its own identity.

The generated design will become a visual reference for a Grade 10 class that will implement the site using plain HTML, CSS, and JavaScript. The interface must therefore look engaging without depending on advanced frameworks or effects that students cannot reasonably reproduce.

## Experience

PinSpot has one continuous page. Visitors first see a marketing hero and select **Start Listening** to smoothly scroll to the album-discovery gallery. They browse or filter albums, open an album-details modal, select a track, and control it through a persistent bottom player.

No authentication, user profiles, uploads, backend services, or external music APIs are included.

## Visual Direction

The design blends:

- Pinterest-inspired white space, visual discovery, varied card heights, rounded imagery, and masonry composition.
- Spotify-inspired dark surfaces, green highlights, music controls, track lists, and persistent playback.

It must not copy either product's logo or exact layout.

### Design Tokens

- Main background: near-black charcoal.
- Elevated surfaces: layered dark grey with subtle borders.
- Primary accent: vivid music green, used for primary actions and active playback.
- Secondary accents: coral red and warm cream, used sparingly for editorial warmth.
- Text: off-white primary text and muted grey secondary text.
- Corners: generously rounded cards, buttons, fields, modal, and player.
- Shadows: soft and restrained, with slight coloured glow only on important active states.
- Typography: bold geometric display headings and a clean sans-serif body face.

## Responsive Page Structure

### 1. Sticky Navigation

- Original PinSpot wordmark or text logo.
- Links for Discover, Genres, and Favourites.
- Search control for albums and artists.
- Clear focus, hover, and active states.
- Compact mobile treatment without hiding essential discovery actions.

### 2. Landing Hero

- Large headline that communicates visual music discovery.
- Short supporting sentence suitable for learners and general music fans.
- Prominent pill-shaped **Start Listening** button.
- Asymmetrical collage of album-cover cards with varied sizes and gentle visual depth.
- The button scrolls to the Discover section on the same page.

### 3. Discover Controls

- Discover heading and short introductory copy.
- Search field with a clear icon and useful placeholder.
- Horizontally scrollable genre chips on narrow screens.
- Selected genre state and a clear way to return to all music.

### 4. Album Gallery

- Pinterest-style responsive masonry composition.
- Album cards show cover art, album title, artist, genre, favourite action, and a subtle open/play affordance.
- Cards use varied image proportions while keeping metadata readable.
- Hover raises the card slightly and gently enlarges its image.
- Keyboard focus receives an equally clear treatment.
- Include representative empty-search and missing-cover states.

### 5. Album Details Modal

- Centred, accessible dark modal with a visible close control and dimmed backdrop.
- Desktop layout places large album artwork and metadata beside the track list.
- Mobile layout stacks album information above the tracks.
- Each track row shows number, title, duration, and play action.
- The active track has a distinct green state.
- Include a friendly unavailable-track treatment.

### 6. Persistent Music Player

- Fixed near the bottom without obscuring important content.
- Current cover thumbnail, song title, and artist.
- Previous, play/pause, and next controls.
- Progress bar with elapsed and total time.
- Volume control on wider screens and a compact mobile layout.
- Clear inactive state before a track is selected.

### 7. About and Footer

- Brief explanation that PinSpot is a student-built HTML, CSS, and JavaScript learning project.
- Small set of navigation links and a simple copyright line.
- Enough bottom spacing to account for the persistent player.

## Interaction and Motion

- Smooth scrolling from **Start Listening** to Discover.
- Subtle card lift and image zoom on hover.
- Modal fade and scale transition.
- Visible favourite toggle response.
- Player state changes when a track is selected or paused.
- Motion stays short and restrained and respects reduced-motion preferences.

## Accessibility

- Strong colour contrast for text and essential controls.
- Semantic heading hierarchy.
- Visible keyboard focus indicators.
- Buttons are visually distinguishable from static labels.
- Modal has a clear title and close action.
- Images have meaningful alternative-text guidance.
- Controls have usable touch target sizes.
- Information is never communicated by colour alone.

## Magic Patterns Deliverable

Generate one coherent responsive UI concept containing:

- Full desktop landing and discovery page.
- Mobile-responsive treatment of the same page.
- Album-details modal state.
- Active bottom-player state.
- Empty search, missing cover, and unavailable track examples.

Use realistic placeholder album names, artists, genres, artwork, and tracks. The output should be visually polished but feasible for beginners to reproduce with semantic HTML, CSS Grid or columns, and vanilla JavaScript.

## Acceptance Criteria

- The first view clearly communicates what PinSpot does.
- **Start Listening** is the dominant call to action and points to Discover.
- The gallery feels inspired by Pinterest and the listening interactions feel inspired by Spotify.
- PinSpot retains an original visual identity.
- Search, genres, album selection, track selection, favourites, and playback states are visually represented.
- Desktop and mobile layouts remain clear and usable.
- The interface can be implemented without a framework.
