@varbase-ai-taxonomy-tagging @ai @recipes @a11y @local @development @staging @production
Feature: Varbase AI Recipe - AI Taxonomy Tagging - Accessible tagging
  As a content editor who uses assistive technology
  I want the page form with Suggest tags to work with a keyboard and a screen reader
  So that I can tag my pages like anyone else

  Scenario Outline: Check the page form keeps the "<rule>" accessibility rule
    Given I am a logged in user with the "Content editor" user
     When I go to "/node/add/page"
     Then the page should not violate the accessibility rule "<rule>"

    Examples:
      | rule              |
      | label             |
      | link-name         |
      | duplicate-id-aria |
      | aria-valid-attr   |
