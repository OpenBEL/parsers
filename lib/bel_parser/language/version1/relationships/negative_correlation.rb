require_relative '../../version1'
require_relative '../../relationship'

module BELParser
  module Language
    module Version1
      module Relationships
        # NegativeCorrelation:  +A negativeCorrelation B+ -  For terms A and B, +A negativeCorrelation B+ indicates that changes in A and B have been observed to be negatively correlated. The order of the subject and object does not affect the interpretation of the statement, thus B negativeCorrelation A is equivalent to A negativeCorrelation B.
        class NegativeCorrelation
          extend Relationship

          SHORT       = :negativeCorrelation
          LONG        = :negativeCorrelation
          DESCRIPTION = ' +A negativeCorrelation B+ -  For terms A and B, +A negativeCorrelation B+ indicates that changes in A and B have been observed to be negatively correlated. The order of the subject and object does not affect the interpretation of the statement, thus B negativeCorrelation A is equivalent to A negativeCorrelation B.'.freeze

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
