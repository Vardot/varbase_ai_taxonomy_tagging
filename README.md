# Varbase AI Taxonomy Tagging

Provides a recipe to automatically tag selected referenced taxonomy terms based on the content entity's body field.

> Apply the Varbase AI Default recipe, or make sure it has been applied before applying this recipe.

Add the recipe using composer:
```
composer require drupal/varbase_ai_taxonomy_tagging:~1.0.0
```

Change directory to `/web` or `/docroot`

Run the Drupal recipe bash script:
```
bash core/scripts/drupal recipe recipes/contrib/varbase_ai_taxonomy_tagging
```

or 

Run the Drush recipe command:
```
drush recipe recipes/contrib/varbase_ai_taxonomy_tagging
```