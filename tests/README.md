# Varbase functional testing suite

Playwright and Cucumber through [`@vardot/varbase-e2e`](https://www.npmjs.com/package/@vardot/varbase-e2e), on a
Varbase 11 site with this recipe applied.

| Feature | Covers |
| --- | --- |
| `01-01-ai-taxonomy-tagging-suggest.feature` | Each editorial role gets one Suggest tags button; Suggest tags picks a tag from the vocabulary; a page saved without tags is tagged by AI |
| `01-02-ai-taxonomy-tagging-accessibility.feature` | The page form gives every field a label and every link a name |

The Suggest tags elements are named selectors in `tests/selectors/ai-taxonomy-tagging-selectors.json`.

## Run it

```bash
npm install
LAUNCH_URL=https://your-site.ddev.site npm test
```

The site needs the webmaster (`webmaster`) and one user per role, named after the role (`content_editor`,
`content_admin`, `seo_admin`, `site_admin`), all with the password in `LOGIN_PASS` (default `dD.123123ddd`).
`.gitlab-ci.yml` shows the whole setup.

## AI provider

CI applies Drupal CMS AI before the recipe. It sets up an amazee.ai trial as the default provider, so no key
is needed and tags are suggested and written by a real model.

The page form is held to the field label, link name and ARIA role checks rather than the full serious gate: the admin theme's help
toggles and CKEditor's toolbar menu items fail it, which comes from the theme and the editor, not this recipe.
