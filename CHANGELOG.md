# Changelog

All notable changes to the Varbase AI Taxonomy Tagging recipe are documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [2.0.1] - 2026-10-05
### Added
- Add a **Suggest tags** button beside the Tagify tags field, so editors see the suggested tags in the content form before saving. Applying the recipe again does not add a second button. Needs `drupal/ai` 1.5.0 or later. See [#3628617](https://www.drupal.org/i/3628617).
- Document how to tag several content types with one shared vocabulary: apply the recipe once per content type with the same taxonomy field.

### Changed
- Require `drupal/ai` `^1.5` and `drupal/field_widget_actions` `^1.4`, and install the Field Widget Actions module.
- Explain in the `content_type` input help that the recipe tags one content type per run.
- Update the version badge to `2.0.1` in `README.md`.

### Fixed
- Stop the run before anything is created when the content type or the taxonomy field does not exist. Before, the automator was saved for the missing content type and stayed behind. See [#3628617](https://www.drupal.org/i/3628617).

## [2.0.0] - 2026-09-06
### Changed
- First stable release of the Varbase AI Taxonomy Tagging recipe on the 2.0.x line, shipped with the Varbase 11.0.0 suite. No functional changes since 2.0.0-rc2.
- Update the version badge to `2.0.0` in `README.md`.

## [2.0.0-rc2] - 2026-08-16
### Fixed
- Add the core Field module to the recipe `install` list. Without it the recipe failed validation on the `field.storage.node.ai_automator_status`, `field.field.node.${content_type}.ai_automator_status` and `field.field.node.${content_type}.${field_name}` config actions, because the field extension was neither installed nor installed by this recipe or its dependencies. See [#3617217](https://www.drupal.org/i/3617217).

### Changed
- Update the version badge to `2.0.0-rc2` in `README.md`.

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

[Unreleased]: https://git.drupalcode.org/project/varbase_ai_taxonomy_tagging/-/compare/2.0.1...2.0.x
[2.0.1]: https://git.drupalcode.org/project/varbase_ai_taxonomy_tagging/-/compare/2.0.0...2.0.1
[2.0.0]: https://git.drupalcode.org/project/varbase_ai_taxonomy_tagging/-/compare/2.0.0-rc2...2.0.0
[2.0.0-rc2]: https://git.drupalcode.org/project/varbase_ai_taxonomy_tagging/-/compare/2.0.0-rc1...2.0.0-rc2
[2.0.0-rc1]: https://git.drupalcode.org/project/varbase_ai_taxonomy_tagging/-/compare/2.0.0-beta2...2.0.0-rc1
[2.0.0-beta2]: https://git.drupalcode.org/project/varbase_ai_taxonomy_tagging/-/compare/2.0.0-beta1...2.0.0-beta2
[2.0.0-beta1]: https://git.drupalcode.org/project/varbase_ai_taxonomy_tagging/-/compare/2.0.0-alpha2...2.0.0-beta1
[2.0.0-alpha2]: https://git.drupalcode.org/project/varbase_ai_taxonomy_tagging/-/compare/2.0.0-alpha1...2.0.0-alpha2
[2.0.0-alpha1]: https://git.drupalcode.org/project/varbase_ai_taxonomy_tagging/-/tags/2.0.0-alpha1
