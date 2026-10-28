@varbase-ai-taxonomy-tagging @ai @recipes @a11y @local @development @staging @production
Feature: Varbase AI Recipe - AI Taxonomy Tagging - Accessible tagging
  As a content editor who uses assistive technology
  I want the page form with Suggest tags to work with a keyboard and a screen reader
  So that I can tag my posts like anyone else

  Scenario: Check the page form gives every field a label and every link a name
    Given I am a logged in user with the "Content editor" user
     When I go to "/node/add/page"
     Then every form field should have an accessible label
      And every link should have an accessible name
      And every ARIA role should be valid
