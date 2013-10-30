Feature: Merge Articles
  As the owner/administrator of the blog
  I want to be able to merge articles which cover similar topics

  Background:
  Given the blog is set up

  Scenario: When you merge articles, the new article should contain the text of both articles
    And I am logged into the admin panel
    Given I am on the edit article page for "Firstmerge"
    Then I should see "Merge Articles"
    When I fill in "merge_with" with "4"
    And I press "Merge"
    Then I should be on the edit article page for "Firstmerge"
    And show me the page
    And I should see "First article. This article will be merged."

  Scenario: A non-admin cannot merge two articles
    And I am logged into the admin panel as blog publisher
    Given I am on the new article page
    Then I should not see "Merge Articles"
