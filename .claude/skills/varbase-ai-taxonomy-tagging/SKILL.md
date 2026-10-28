---
name: varbase-ai-taxonomy-tagging
description: "Apply, repair and verify Varbase AI Taxonomy Tagging on a Varbase 11 site: the Suggest tags button and tags written on save while the field is empty (Varbase AI Taxonomy Tagging). Install and apply commands, inputs, config, post-apply steps, browser checks, traps and versions, read from the recipe code. Use when adding, fixing or checking Varbase AI Taxonomy Tagging."
---

# Varbase AI Taxonomy Tagging

Read from `recipe.yml`, `composer.json`, README, CHANGELOG and `git log` at the latest tag, 28 October 2026. Re-check versions on drupal.org before relying on them. For the full Varbase AI apply order, see the Varbase AI recipes docs page.

## Recipes

| Recipe | Latest | Stability | Require |
|---|---|---|---|
| `varbase_ai_taxonomy_tagging` | 2.0.2 | stable | `drupal/varbase_ai_taxonomy_tagging:~2` |

Docs (the code wins where they differ):
- https://docs.varbase.vardot.com/developers/understanding-varbase/varbase-ai-recipes/varbase-ai-taxonomy-tagging

## What it does

- Installs `node`, `field`, `taxonomy`, `ai`, `ai_automators`, `field_widget_actions`. For `node.<content_type>`: the tags field, automator `node.<type>.<field_name>.default` reading `base_field`, field storage `node.ai_automator_status` and its field, and the Suggest tags widget action on the form display.
- Inputs: `content_type` (page since 2.0.2, was blog), `field_name` (field_tags), `base_field` (field_content). Stops early on a missing content type (2.0.1).
- Composer: `drupal/core ~11.4.0`, `ai ^1.5`, `drupal_cms_ai ~2`, `field_widget_actions ^1.4`. Applied by Varbase AI Base.

## Apply

All commands in DDEV, from the project root; recipes are applied from the docroot path `../recipes/<name>`. Take a snapshot first: `ddev snapshot --name before-varbase-ai-taxonomy-tagging`. Add each recipe to `extra.drupal-recipe-unpack.ignore` in `composer.json` before requiring it (read the list first: `composer config --json` replaces it).

```bash
ddev composer require drupal/varbase_ai_taxonomy_tagging:~2
ddev drush cr
for i in 1 2; do ddev drush recipe ../recipes/varbase_ai_taxonomy_tagging -y \
  --input=varbase_ai_taxonomy_tagging.content_type=<type> \
  --input=varbase_ai_taxonomy_tagging.field_name=field_tags \
  --input=varbase_ai_taxonomy_tagging.base_field=field_content; done
```

Apply once per content type; twice because the first run can stop on the field storage it creates.

## After the apply

- Give `field.storage.node.ai_automator_status` allowed values (pending, processing, failed, finished), after asking; Content Operations and MCP saves fail validation without them.

## Verify

- On the node form of that type: Suggest tags fills the tags; saving with empty tags fills them.

Test as a real editor or visitor, not user 1: a superuser bypasses permissions.

## Traps

- `ai_automator_status` with no allowed values breaks other save paths.
- One AI call per save: turn the automator off (`status: 0`) for bulk imports.

## History

Since January 2025; 2.0.0 on 5 Sep 2026; 2.0.1 (5 Oct, Suggest tags for several types #3628617); 2.0.2 (27 Oct, default `page` #3633116).
