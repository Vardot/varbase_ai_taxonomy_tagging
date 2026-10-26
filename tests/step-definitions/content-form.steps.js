// Steps for the content edit form, where the menu settings repeat field labels such as "Description".
const { When } = require('@cucumber/cucumber');

/**
 * Fill in one of the content's own fields by its label, skipping same-labelled fields in the sidebar.
 *
 * Example #1: When I fill in the content field "Description" with "How we build pages that everyone can use."
 * Example #2: And I fill in the content field "Title" with "Making every page usable"
 */
When(/^(?:I |we )*fill in the content field "([^"]*)" with "([^"]*)"$/, async function (label, value) {
  const field = this.page.getByLabel(label, { exact: true }).and(this.page.locator('[name^="field_"], [name^="title"]'));
  await field.first().fill(value);
});
