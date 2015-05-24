# Prerequisites
## MuseScore
Download and install MuseScore from https://musescore.org/

### Mac OS
In your shell run: `export PATH="/Applications/MuseScore 2.app/Contents/MacOS/":$PATH`

### Windows
Add `musescore` bin to your path

# Getting Started
All score data is stored in `src/`. Generated files will be dumped in `output/`.

### Generate all scores
`./generate.sh /`

### Generate all Madness scores
`./generate.sh /madness`

### Generate all House Of Fun by Madness scores
`./generate.sh /madness/house-of-fun`

### Generate bass score of House of Fun by Madness
`./generate.sh /madness/house-of-fun/bass`
