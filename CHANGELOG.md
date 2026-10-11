# Changelog

All notable changes to the Varbase AI Taxonomy Tagging recipe are documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [1.0.2] - 2026-10-11
### Changed
- Add the default `.gitlab` and `.github` issue and merge request templates. See [#3614571](https://www.drupal.org/i/3614571).
- Set the recipe version to `1.0.2`.

## [1.0.1] - 2025-07-01
### Changed
- Require `drupal/ai` `~1.1.0`. See [#3532980](https://www.drupal.org/i/3532980).
- Say in `README.md` that the Varbase AI Default recipe must be applied first, and show both ways to apply this recipe: the Drupal recipe script or Drush. See [#3533379](https://www.drupal.org/i/3533379).
- Set the recipe version to `1.0.1`.

## [1.0.0] - 2025-01-27
### Added
- Initial release of the Varbase AI Taxonomy Tagging recipe: adds an AI automator that tags a content type from its body, asking for the content type (default `varbase_blog`) and the taxonomy field (default `field_tags`). See [#3501744](https://www.drupal.org/i/3501744).

[Unreleased]: https://git.drupalcode.org/project/varbase_ai_taxonomy_tagging/-/compare/1.0.2...1.0.x
[1.0.2]: https://git.drupalcode.org/project/varbase_ai_taxonomy_tagging/-/compare/1.0.1...1.0.2
[1.0.1]: https://git.drupalcode.org/project/varbase_ai_taxonomy_tagging/-/compare/1.0.0...1.0.1
[1.0.0]: https://git.drupalcode.org/project/varbase_ai_taxonomy_tagging/-/tags/1.0.0
