# Homebrew Tap for Magic Apps

Official Homebrew tap for [Magic Apps](https://macmagic.app): native macOS desktop applications for Google Workspace.

## Available Casks

| Cask | Description | Install Command |
| :--- | :--- | :--- |
| **`magimail`** | Native macOS client for Gmail | `brew install --cask alxhslm/tap/magimail` |
| **`magical`** | Native macOS client for Google Calendar | `brew install --cask alxhslm/tap/magical` |

## Usage

You can install either app directly:

```sh
brew install --cask alxhslm/tap/magimail
brew install --cask alxhslm/tap/magical
```

Or tap the repository first:

```sh
brew tap alxhslm/tap
brew install --cask magimail
brew install --cask magical
```

In a `Brewfile`:

```ruby
tap "alxhslm/tap"
cask "magimail"
cask "magical"
```
