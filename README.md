[![Varbase](https://raw.githubusercontent.com/Vardot/varbase/11.0.x/images/varbase-logo.png)](https://www.drupal.org/project/varbase)

# Varbase AI Taxonomy Tagging
[![pipeline status](https://git.drupalcode.org/project/varbase_ai_taxonomy_tagging/badges/2.0.x/pipeline.svg)](https://git.drupalcode.org/project/varbase_ai_taxonomy_tagging/-/pipelines)
[![Varbase AI Taxonomy Tagging](https://img.shields.io/badge/Varbase%20AI%20Taxonomy%20Tagging-2.0.0--rc1-0d6efc?labelColor=001d38&style=flat-square)](https://git.drupalcode.org/project/varbase_ai_taxonomy_tagging/-/pipelines?ref=2.0.0-rc1)
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
