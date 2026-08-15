# Changelog

All notable changes to the Varbase AI Taxonomy Tagging recipe are documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [2.0.0-rc1] - 2026-08-15
### Changed
- Release the recipe with the Varbase 11.0.0-rc1 suite. No functional changes since 2.0.0-beta2.
- Update the version badge to `2.0.0-rc1` in `README.md`.

## [2.0.0-beta2] - 2026-07-14
### Fixed
- Recipe install no longer fails on a fresh site: the `ai_automator` entity is now created before the `ai_automator_status` field, so `ai_automators` does not delete that field the moment the recipe creates it. See [#3610806](https://www.drupal.org/i/3610806).

## [2.0.0-beta1] - 2026-07-10
### Changed
- Update Drupal Core from ~11.3.0 to ~11.4.0 in the Varbase AI Taxonomy Tagging recipe.
- Update the version badge to `2.0.0-beta1` in `README.md`.
- Run CI on tag pushes and add the README pipeline and release badges.

## [2.0.0-alpha2] - 2026-06-21
### Changed
- Maintenance and dependency updates for the Varbase AI Taxonomy Tagging recipe.

## [2.0.0-alpha1]
### Added
- Initial 2.0.x release of the Varbase AI Taxonomy Tagging recipe.

[Unreleased]: https://git.drupalcode.org/project/varbase_ai_taxonomy_tagging/-/compare/2.0.0-rc1...2.0.x
[2.0.0-rc1]: https://git.drupalcode.org/project/varbase_ai_taxonomy_tagging/-/compare/2.0.0-beta2...2.0.0-rc1
[2.0.0-beta2]: https://git.drupalcode.org/project/varbase_ai_taxonomy_tagging/-/compare/2.0.0-beta1...2.0.0-beta2
[2.0.0-beta1]: https://git.drupalcode.org/project/varbase_ai_taxonomy_tagging/-/compare/2.0.0-alpha2...2.0.0-beta1
[2.0.0-alpha2]: https://git.drupalcode.org/project/varbase_ai_taxonomy_tagging/-/compare/2.0.0-alpha1...2.0.0-alpha2
[2.0.0-alpha1]: https://git.drupalcode.org/project/varbase_ai_taxonomy_tagging/-/tags/2.0.0-alpha1
