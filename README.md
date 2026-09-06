# PinSpot Student Guide

Welcome to **PinSpot**!

PinSpot is a class web-development project that combines a Pinterest-style album gallery with Spotify-inspired music playback. We will build it together using only **HTML, CSS, and JavaScript**.

## What You Will Learn

During this project, you will learn how to:

- Structure a webpage with HTML.
- Style cards, layouts, and responsive pages with CSS.
- Store album and track information in JavaScript objects.
- Create webpage content from JavaScript data.
- Respond to button clicks and user input.
- Search and filter albums.
- Play local audio files.
- Save favourite albums in the browser.
- Test, debug, and explain your code.
- Work safely with classmates using Git and GitHub.

## Project Features

Our first version will include:

- A responsive album gallery.
- Search by album or artist.
- Genre filters.
- An album-details window with a track list.
- A music player.
- Favourite albums saved in the browser.

## Project Structure

```text
PinSpot/
|-- assets/
|   |-- audio/       Music files
|   `-- images/      Album cover images
|-- docs/            Project planning documents
|-- index.html       Page structure and content
|-- style.css        Colours, layout, and visual design
|-- script.js        Data and interactive behaviour
`-- README.md        This student guide
```

## Getting the Project

### Option 1: Clone with Git

Open a terminal in the folder where you keep your school projects, then run:

```bash
git clone git@github.com:idxhub/PinSpot.git
cd PinSpot
```

If SSH is not configured on your computer, use:

```bash
git clone https://github.com/idxhub/PinSpot.git
cd PinSpot
```

### Option 2: Download a ZIP File

1. Open the PinSpot repository on GitHub.
2. Select **Code**.
3. Select **Download ZIP**.
4. Extract the downloaded file.
5. Open the extracted folder in your code editor.

Use the Git option when you need to contribute code. A downloaded ZIP file is useful for viewing or practising, but it does not connect your work to GitHub.

## Opening PinSpot

1. Open the PinSpot folder in Visual Studio Code.
2. Find `index.html` in the Explorer panel.
3. Open it in a browser.
4. Refresh the browser after saving a change.

If your teacher asks you to use the Live Server extension, right-click `index.html` and select **Open with Live Server**.

## Before You Start Coding

Always get the newest class version before starting:

```bash
git switch main
git pull origin main
```

Do not begin editing if Git reports a problem. Read the message and ask for help before continuing.

## Class Git Workflow

Your teacher will tell you whether to work directly on the class computer or create a branch. Do not push directly to `main` unless your teacher asks you to.

### 1. Create Your Branch

Use your first name and the feature you are working on:

```bash
git switch -c firstname-feature
```

Example:

```bash
git switch -c amina-album-card
```

Use lowercase letters and hyphens. Each branch name must be unique.

### 2. Make One Small Change

- Edit only the files needed for your assigned task.
- Save your work.
- Test the page in the browser.
- Check that existing features still work.

### 3. Review Your Changes

```bash
git status
git diff
```

Make sure you understand every change shown.

### 4. Commit Your Work

```bash
git add index.html style.css script.js assets
git commit -m "Add album card layout"
```

Your commit message should briefly explain what changed. Do not use messages such as `work`, `stuff`, or `changes`.

### 5. Push Your Branch

```bash
git push -u origin firstname-feature
```

Replace `firstname-feature` with your actual branch name. After pushing, follow your teacher's instructions for sharing or reviewing the work.

## Collaboration Rules

- Pull the newest version before starting a task.
- Work only on your assigned feature.
- Use your own branch unless the teacher says otherwise.
- Never delete another student's code to solve a conflict.
- Do not force-push.
- Do not commit passwords, private information, or copyrighted files.
- Test before committing.
- Ask for help when Git reports a conflict.
- Keep commits small and focused on one change.

## Adding Albums and Tracks

Place album covers in:

```text
assets/images/
```

Place music clips in:

```text
assets/audio/
```

Use simple lowercase filenames with hyphens and no spaces:

```text
assets/images/sunrise-beats.jpg
assets/audio/morning-light.mp3
```

Make sure the path written in JavaScript exactly matches the filename. `Song.mp3` and `song.mp3` may be treated as different files.

Only use media supplied or approved by the teacher.

## Example Album Data

Albums will be represented as JavaScript objects:

```js
{
  id: "sunrise-beats",
  title: "Sunrise Beats",
  artist: "Example Artist",
  genre: "Afrobeat",
  cover: "assets/images/sunrise-beats.jpg",
  tracks: [
    {
      title: "Morning Light",
      audio: "assets/audio/morning-light.mp3"
    }
  ]
}
```

Every album needs a unique `id`. Check all commas, quotation marks, braces, and brackets carefully.

## Learning Roadmap

### Week 1: HTML

- Create the page structure.
- Build album cards.
- Add the album-details and audio elements.

### Week 2: CSS

- Style the page and cards.
- Create a responsive grid.
- Add hover and selected states.

### Week 3: JavaScript Data

- Create album objects and arrays.
- Render album cards from data.
- Practise functions and loops.

### Week 4: Interaction

- Add search and genre filters.
- Open album details.
- Select and play tracks.

### Week 5: Storage and Presentation

- Save favourites with `localStorage`.
- Test and debug the application.
- Present and explain the finished work.

Your teacher may combine lessons when the project runs for three or four weeks.

## Testing Checklist

Before saying that a task is finished, check:

- [ ] The browser console has no unexpected errors.
- [ ] The page works on both a wide and narrow screen.
- [ ] Album cards display the correct image and text.
- [ ] Search handles uppercase and lowercase text.
- [ ] Genre filters show the correct albums.
- [ ] Each album opens the correct track list.
- [ ] Selecting a track loads the correct audio.
- [ ] Only one track plays at a time.
- [ ] Missing media displays a friendly message.
- [ ] Existing features still work after the change.

## Common Problems

### My CSS Does Not Appear

- Save `style.css`.
- Check that `index.html` contains `href="style.css"`.
- Check the spelling of your selector.
- Refresh the browser.

### My JavaScript Does Not Run

- Open the browser developer tools and check the Console.
- Check that `index.html` contains `src="script.js"`.
- Look for missing commas, brackets, braces, or quotation marks.
- Check that element IDs match exactly.

### My Image or Audio Does Not Load

- Check the filename and extension.
- Check uppercase and lowercase letters.
- Check whether the file is in the correct assets folder.
- Check that the path starts with `assets/images/` or `assets/audio/`.

### Git Reports a Conflict

Stop and ask the teacher for help. Do not delete conflict markers or another student's work unless you understand and have reviewed both versions.

## Student Progress Checklist

- [ ] I can explain the purpose of HTML, CSS, and JavaScript.
- [ ] I can create and style an album card.
- [ ] I can explain an album object and its properties.
- [ ] I can render content using JavaScript.
- [ ] I can add and handle a click event.
- [ ] I can test search, filtering, and playback.
- [ ] I can create a branch and make a clear commit.
- [ ] I can explain one function I helped build.
- [ ] I can describe one bug and how it was fixed.

## Remember

Errors are a normal part of programming. Read the message, identify where the problem happened, test one idea at a time, and ask questions when you are stuck.
