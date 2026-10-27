[![Varbase](https://raw.githubusercontent.com/Vardot/varbase/11.0.x/images/varbase-logo.png)](https://www.drupal.org/project/varbase)

# Varbase AI Taxonomy Tagging
[![pipeline status](https://git.drupalcode.org/project/varbase_ai_taxonomy_tagging/badges/2.0.x/pipeline.svg)](https://git.drupalcode.org/project/varbase_ai_taxonomy_tagging/-/pipelines)
[![Varbase AI Taxonomy Tagging](https://img.shields.io/badge/Varbase%20AI%20Taxonomy%20Tagging-2.0.2-0d6efc?labelColor=001d38&style=flat-square)](https://git.drupalcode.org/project/varbase_ai_taxonomy_tagging/-/pipelines?ref=2.0.2)
[![Automated Functional Testing](https://git.drupalcode.org/project/varbase_project/badges/11.0.x/pipeline.svg)](https://git.drupalcode.org/project/varbase_project/-/pipelines)

This recipe enables AI-powered taxonomy tagging for content and ensures that Varbase editorial roles have the required permissions to use AI tagging features provided by the Drupal CMS AI default recipe.

> Apply the Drupal CMS AI default recipe, or make sure it has been applied before applying this recipe.

## Documentation

Read the [Varbase AI Taxonomy Tagging documentation](https://docs.varbase.vardot.com/developers/understanding-varbase/varbase-ai-recipes/varbase-ai-taxonomy-tagging) on the Varbase docs site.

## Installation

Add the recipe using composer:
```
composer require drupal/varbase_ai_taxonomy_tagging:~2
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

## Tag several content types

The recipe tags one content type per run. Apply it again for each content type, for example `blog` and `page` on stock Varbase:
```
for content_type in blog page; do
  drush recipe ../recipes/varbase_ai_taxonomy_tagging \
    --input=varbase_ai_taxonomy_tagging.content_type=$content_type \
    --input=varbase_ai_taxonomy_tagging.field_name=field_tags \
    --input=varbase_ai_taxonomy_tagging.base_field=field_content
done
```

## Automated testing

GitLab CI on [git.drupalcode.org](https://git.drupalcode.org/project/varbase_ai_taxonomy_tagging) (`.gitlab-ci.yml`) builds
a Varbase 11 site, applies this recipe twice and runs the Varbase functional testing suite in `tests/` on it. See
[tests/README.md](tests/README.md) to run it against a site of your own.
