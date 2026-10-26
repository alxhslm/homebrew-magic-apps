# Homebrew Tap for Magic Apps

Official Homebrew tap for [Magic Apps](https://github.com/alxhslm/magic-apps) ([macmagic.app](https://macmagic.app)): native macOS desktop applications for Google Workspace.

## Available Casks

| Cask | Description | Install Command |
| :--- | :--- | :--- |
| **`magimail`** | Gmail client | `brew install --cask alxhslm/magic-apps/magimail` |
| **`magical`** | Google Calendar client | `brew install --cask alxhslm/magic-apps/magical` |

## Usage

Tap the repository:

```sh
brew tap alxhslm/magic-apps
brew install --cask magimail
brew install --cask magical
```

Or install directly in one command:

```sh
brew install --cask alxhslm/magic-apps/magimail
brew install --cask alxhslm/magic-apps/magical
```

In a `Brewfile`:

```ruby
tap "alxhslm/magic-apps"
cask "magimail"
cask "magical"
```

## Trademark Disclaimer

"Magic Apps", "Magimail", "Magical", and their respective icons and artwork are trademarks of Alex Haslam.

Magic Apps is an independent project and is not affiliated with, endorsed by, or sponsored by Google LLC. Gmail, Google Calendar, Google Workspace, Google Tasks, Google Meet and Google Drive are trademarks of Google LLC. macOS, Mac, Apple, Finder, Safari, Mail and Messages are trademarks of Apple Inc.
