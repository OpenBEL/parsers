require_relative '../../version1'
require_relative '../../relationship'

module BELParser
  module Language
    module Version1
      module Relationships
        # CausesNoChange:  +A causesNoChange B+ -  For terms A and B, +A causesNoChange B+ indicates that B was observed not to change in response to changes in A. Statements using this relationship correspond to cases where explicit measurement of B demonstrates lack of significant change, not for cases where the state of B is unknown.
        class CausesNoChange
          extend Relationship

          SHORT       = :causesNoChange
          LONG        = :causesNoChange
          DESCRIPTION = ' +A causesNoChange B+ -  For terms A and B, +A causesNoChange B+ indicates that B was observed not to change in response to changes in A. Statements using this relationship correspond to cases where explicit measurement of B demonstrates lack of significant change, not for cases where the state of B is unknown.'.freeze

          def self.short
            SHORT
          end

          def self.long
            LONG
          end

          def self.description
            DESCRIPTION
          end
        end
      end
    end
  end
end
