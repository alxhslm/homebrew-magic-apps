# Homebrew Tap for Magic Apps

Official Homebrew tap for [Magic Apps](https://macmagic.app): high-performance native macOS desktop applications for Google Workspace.

## Available Casks

| Cask | Description | Install Command |
| :--- | :--- | :--- |
| **`magimail`** | Gmail client | `brew install --cask alxhslm/magic-apps/magimail` |
| **`magical`** | Google Calendar client | `brew install --cask alxhslm/magic-apps/magical` |

## Usage

You can tap the repository once:

```sh
brew tap alxhslm/magic-apps
brew install --cask magimail
brew install --cask magical
```

Or install directly in a single command:

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
