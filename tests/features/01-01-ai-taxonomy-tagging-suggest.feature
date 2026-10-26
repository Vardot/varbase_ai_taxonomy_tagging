@varbase-ai-taxonomy-tagging @ai @recipes @local @development
Feature: Varbase AI Recipe - AI Taxonomy Tagging - Suggest tags while writing a page
  As a content editor
  I want a Suggest tags button beside the Tags of my page
  So that I can pick tags the AI proposes from the site's own vocabulary before I save

  Scenario Outline: Check the "<user>" user gets one Suggest tags button and no automator status field
    Given I am a logged in user with the "<user>" user
     When I go to "/node/add/page"
     Then I should see "Tags"
      And I see visible suggest tags button
      And I don't see second suggest tags button
      And I should not see "AI Automator Status"

    Examples:
      | user           |
      | Content editor |
      | Content admin  |
      | SEO admin      |
      | Site admin     |

  Scenario: Verify Suggest tags picks a matching tag from the vocabulary
    Given I am a logged in user with the "Webmaster" user
     When I go to "/admin/structure/taxonomy/manage/tags/add"
      And I fill in "Name" with "Open source"
      And I press "Save"
      And I logout
    Given I am a logged in user with the "Content editor" user
     When I go to "/node/add/page"
      And I fill in "Title" with "Why we publish our code"
      And I fill in the rich text editor field "Content" with "We share all our modules as open source software under the GPL, so anyone can read, change and reuse them."
      And I click "Suggest tags"
      And I wait max of 60 seconds
     Then I see visible open source tag

  Scenario: Verify a page saved without tags is tagged by AI from the vocabulary
    Given I am a logged in user with the "Webmaster" user
     When I go to "/admin/structure/taxonomy/manage/tags/add"
      And I fill in "Name" with "Accessibility"
      And I press "Save"
      And I logout
    Given I am a logged in user with the "Content editor" user
     When I go to "/node/add/page"
      And I fill in "Title" with "Making every page usable"
      And I fill in the content field "Description" with "How we build pages that everyone can use."
      And I fill in the rich text editor field "Content" with "We test every page with a screen reader and a keyboard so that people with disabilities can use the site."
      And I press "Save"
     Then I should see "Making every page usable"
     When I go to "/admin/content"
      And I open the "Edit" link in the "Making every page usable" row
     Then the "Tags" field should contain "Accessibility"
