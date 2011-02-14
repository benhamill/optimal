Feature: Usage

  Scenario: Explicit usage call
    Given a file called 'party_on' with:
    """
    #!/usr/bin/env ruby
    class PartyOnRunner
      include Optimal
    end
    """

    When I type 'party_on usage'

    Then I should see
    """
    usage: party_on
    """
