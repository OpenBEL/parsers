require_relative '../../version2_0'
require_relative '../../relationship'

module BELParser
  module Language
    module Version2_0
      module Relationships
        # DirectlyDecreases:  +A =| B+ -  For terms A and B, +A
        # directlyDecreases B or A =| B+ indicates A decreases B and that
        # the mechanism of the causal relationship is based on physical
        # interaction of entities related to A and B. This is a direct
        # version of the decreases relationship.
        class DirectlyDecreases
          extend Relationship

          SHORT       = :'=|'
          LONG        = :directlyDecreases

          DESCRIPTION = <<-DOC
DirectlyDecreases:  +A =| B+ -  For terms A and B, +A
directlyDecreases B or A =| B+ indicates A decreases B and that
the mechanism of the causal relationship is based on physical
interaction of entities related to A and B. This is a direct
version of the decreases relationship.
          DOC

          def self.short
            SHORT
          end

          def self.long
            LONG
          end

          def self.description
            DESCRIPTION
          end

          def self.causal?
            true
          end

          def self.decreasing?
            true
          end

          def self.direct?
            true
          end

          def self.directed?
            true
          end
        end
      end
    end
  end
end
