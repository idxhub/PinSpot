# Pinspot: Project Design and Lesson Roadmap

## Purpose

Pinspot is a Grade 10 project-based introduction to HTML, CSS, and JavaScript. It combines a Pinterest-style album gallery with a Spotify-inspired music experience. The class will build one shared first version over three to five weeks, with two two-hour lessons each week.

The project prioritizes visible progress, understandable code, and opportunities for students to practise each concept independently after a guided class demonstration.

## Learning Outcomes

By the end of the project, students should be able to:

- Structure a webpage with semantic HTML.
- Build responsive layouts using CSS Grid and media queries.
- Style interactive states such as hover, selected, and hidden.
- Represent albums and tracks using JavaScript arrays and objects.
- Generate HTML from JavaScript data.
- Respond to clicks, searches, and filter selections with event listeners.
- Control an HTML audio element with JavaScript.
- Store and retrieve favourite albums with `localStorage`.
- Test, explain, and debug a small web application.

## Version-One Scope

Pinspot will be a single-page website containing:

- A responsive, Pinterest-inspired album-card grid.
- Search by album title or artist.
- Genre filter buttons.
- A centred album-details modal containing a track list.
- A shared music player fixed near the bottom of the page.
- Play and pause controls and visible track progress.
- Favourite albums persisted with `localStorage`.
- Friendly fallbacks for unavailable images or audio files.

User accounts, external APIs, music uploads, backend services, shuffle, and playlist management are outside the first-version scope.

## User Journey

1. The user browses album cards in the gallery.
2. The user searches for an album or artist or selects a genre.
3. The user selects an album to open its details modal.
4. The modal displays the album information and track list.
5. The user selects a track, which loads into the shared player.
6. The user plays or pauses the track and can mark the album as a favourite.

## Project Structure

```text
pinspot/
|-- index.html
|-- style.css
|-- script.js
|-- assets/
|   |-- images/
|   `-- audio/
`-- docs/
```

- `index.html` defines the navigation, gallery container, modal, and audio player.
- `style.css` defines the card grid, modal, player, responsive rules, and interaction states.
- `script.js` contains album data, rendering, filtering, modal behavior, playback, and favourites.
- `assets/` contains teacher-provided, copyright-cleared cover images and short audio clips.

## Data Model

Albums will be stored in one JavaScript array. Each album has a stable identifier, descriptive information, a local cover path, and a track list.

```js
{
  id: "album-1",
  title: "Album Name",
  artist: "Artist Name",
  genre: "Afrobeat",
  cover: "assets/images/album-name.jpg",
  tracks: [
    {
      title: "Song Name",
      audio: "assets/audio/song-name.mp3"
    }
  ]
}
```

## JavaScript Responsibilities

The application will use small functions with clear responsibilities:

- `renderAlbums(albums)` renders a supplied list of album cards.
- `filterAlbums()` combines the current search text and genre selection.
- `openAlbum(albumId)` fills and displays the album-details modal.
- `closeAlbum()` hides the modal and restores the gallery interaction.
- `loadTrack(albumId, trackIndex)` loads the selected track into the shared player.
- `toggleFavourite(albumId)` updates favourites and persists them in `localStorage`.
- Player event handlers update the play state and progress display.

Only one track plays at a time because all selections use the same HTML `<audio>` element.

## Error and Empty States

- An unsuccessful search displays a friendly “No albums found” message.
- A missing cover displays a supplied placeholder image.
- Audio loading or playback failure displays “Track unavailable” and keeps the page usable.
- An empty or invalid favourites value in `localStorage` falls back to an empty array.
- The modal can be closed with its close button, by selecting the backdrop, and with the Escape key.

## Teaching Approach

Each lesson follows a repeatable rhythm:

1. Demonstrate one new concept with a small example.
2. Build the related Pinspot feature together.
3. Give students a short individual challenge.
4. Review, test, and discuss common mistakes as a class.

The project begins with handwritten HTML album cards. Later, students replace those cards with JavaScript-generated cards, making the value of arrays, objects, loops, and functions concrete.

## Five-Week Roadmap

### Week 1: HTML and Page Structure

- Lesson 1: Introduce Pinspot, folders, semantic HTML, navigation, and gallery structure.
- Lesson 2: Build album cards and introduce the modal and audio elements.
- Individual challenge: Add and explain one new album card.

### Week 2: CSS and Responsive Layout

- Lesson 3: Style typography, colours, spacing, cards, and interaction states.
- Lesson 4: Build the gallery with CSS Grid and add responsive breakpoints.
- Individual challenge: Create a card hover effect and verify the page at a mobile width.

### Week 3: JavaScript Data and Rendering

- Lesson 5: Introduce variables, arrays, objects, and the album data model.
- Lesson 6: Use functions, loops, and template literals to render album cards.
- Individual challenge: Add one valid album object with multiple tracks.

### Week 4: Interaction and Playback

- Lesson 7: Add event listeners, search, and genre filtering.
- Lesson 8: Open the album modal, render its tracks, and control the shared audio player.
- Individual challenge: Improve an empty or unavailable-track state.

### Week 5: Persistence, Testing, and Presentation

- Lesson 9: Add favourites with `localStorage`, then test and debug the application.
- Lesson 10: Complete accessibility checks, polish the interface, and hold student demonstrations.
- Individual challenge: Explain one JavaScript function and one bug that was corrected.

## Three-Week Adaptation

For a three-week schedule:

- Week 1 combines HTML structure and essential CSS styling.
- Week 2 covers responsive layout, JavaScript data, and card rendering.
- Week 3 covers the modal, track selection, basic playback, testing, and presentations.
- Favourites, progress seeking, elaborate animations, and combined genre/search filtering become optional extensions.

## Testing Checklist

Students will manually verify that:

- The layout remains usable on desktop and mobile widths.
- Every album opens the correct modal content.
- Closing the modal works with all supported methods.
- Selecting a track stops or replaces the previously loaded track.
- Play and pause controls reflect the audio state.
- Search is case-insensitive and handles surrounding spaces.
- Search and genre filters work together.
- Empty search results show a clear message.
- Missing images and audio do not break the page.
- Favourites remain after refreshing the browser.

## Assessment

Assessment should consider:

- Working gallery, filtering, modal, and playback features.
- Correct and semantic HTML.
- Responsive and readable CSS.
- Clear JavaScript objects, functions, names, and event handling.
- Sensible error and empty states.
- The student's ability to explain one function and describe their testing.

Individual understanding can be measured through lesson challenges and the final explanation even though the class produces one shared application.

## Optional Extensions

Students who finish early may add a light/dark theme, sorting, recently played tracks, shuffle, visual player enhancements, or additional album data. These extensions must not delay completion of the first-version scope.
