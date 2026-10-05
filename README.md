[![Varbase](https://raw.githubusercontent.com/Vardot/varbase/11.0.x/images/varbase-logo.png)](https://www.drupal.org/project/varbase)

# Varbase AI Taxonomy Tagging
[![pipeline status](https://git.drupalcode.org/project/varbase_ai_taxonomy_tagging/badges/2.0.x/pipeline.svg)](https://git.drupalcode.org/project/varbase_ai_taxonomy_tagging/-/pipelines)
[![Varbase AI Taxonomy Tagging](https://img.shields.io/badge/Varbase%20AI%20Taxonomy%20Tagging-2.0.0-0d6efc?labelColor=001d38&style=flat-square)](https://git.drupalcode.org/project/varbase_ai_taxonomy_tagging/-/pipelines?ref=2.0.0)
[![Automated Functional Testing](https://git.drupalcode.org/project/varbase_project/badges/11.0.x/pipeline.svg)](https://git.drupalcode.org/project/varbase_project/-/pipelines)

This recipe enables AI-powered taxonomy tagging for content and ensures that Varbase editorial roles have the required permissions to use AI tagging features provided by the Drupal CMS AI default recipe.

> Apply the Drupal CMS AI default recipe, or make sure it has been applied before applying this recipe.

Add the recipe using composer:
```
composer require drupal/varbase_ai_taxonomy_tagging:~2.0.0
```

Change directory to `/web` or `/docroot`

Run the Drupal recipe bash script:
```
bash core/scripts/drupal recipe ../recipes/varbase_ai_taxonomy_tagging
```

or

Run the Drush recipe command:
```
drush recipe ../recipes/varbase_ai_taxonomy_tagging
```

## Suggest tags before saving

Each run adds a **Suggest tags** button beside the Tagify tags field on the content form. Editors click it to fill the field with the suggested tags, and can remove or add tags before they save. Tags are only generated on save when the field is still empty.

This needs `drupal/ai` 1.5.0 or later (Tagify support for the AI Automators button, see [#3536912](https://www.drupal.org/i/3536912)) and the Field Widget Actions module, which the recipe installs.

## Tag several content types

The recipe tags one content type per run. To tag more, apply it again for each content type, with the same taxonomy field, so they all share one vocabulary. Each content type gets its own button.

Stock Varbase has two content types with a `field_tags` field that points to the shared `tags` vocabulary, `blog` and `page`:
```
for content_type in blog page; do
  drush recipe ../recipes/varbase_ai_taxonomy_tagging \
    --input=varbase_ai_taxonomy_tagging.content_type=$content_type \
    --input=varbase_ai_taxonomy_tagging.field_name=field_tags \
    --input=varbase_ai_taxonomy_tagging.base_field=field_content
done
```

- Applying the recipe again to a content type that is already tagged changes nothing.
- The content type must already have the taxonomy field and the base field.
- Tags are chosen from the vocabulary the taxonomy field points to.
- Tagging runs on save while the taxonomy field is empty, so each save of an untagged item makes one request to the AI provider.
