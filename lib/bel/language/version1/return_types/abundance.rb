require_relative 'any'

module BEL
  module Language
    module Version1
      module ReturnTypes
        # Abundance return type.
        class Abundance < Any
          # Return the {Symbol} value.
          #
          # @note This method should be overridden in subclasses.
          def self.to_sym
            raise_not_implemented(__method__) if self != Abundance
            :abundance
          end
        end
      end
    end
  end
end