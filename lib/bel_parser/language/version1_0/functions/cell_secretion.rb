require_relative '../../version1_0'
require_relative '../../function'
require_relative '../../signature'
require_relative '../../semantics'

module BELParser
  module Language
    module Version1_0
      module Functions
        # CellSecretion: Denotes the frequency or abundance of events
        # in which members of an abundance move from cells to regions
        # outside of the cells
        class CellSecretion
          extend Function

          SHORT       = :sec
          LONG        = :cellSecretion
          RETURN_TYPE = BELParser::Language::Version1_0::ReturnTypes::Abundance
          DESCRIPTION = 'Denotes the frequency or abundance of events
          n which members of an abundance move from cells
          o regions outside of the cells'.freeze

          def self.short
            SHORT
          end

          def self.long
            LONG
          end

          def self.return_type
            RETURN_TYPE
          end

          def self.description
            DESCRIPTION
          end

          def self.signatures
            SIGNATURES
          end

          module Signatures
            # CellSecretionSignature
            class CellSecretionSignature
              extend BELParser::Language::Signature

              private_class_method :new

              AST = BELParser::Language::Semantics::Builder.build do
                term(
                  function(
                    identifier(
                      function_of(CellSecretion))),
                  argument(
                    term(
                      function(
                        identifier(
                          return_type_of(BELParser::Language::Version1_0::ReturnTypes::Abundance))))))
              end
              private_constant :AST

              STRING_FORM = 'cellSecretion(F:abundance)abundance'.freeze
              private_constant :STRING_FORM

              def self.semantic_ast
                AST
              end

              def self.string_form
                STRING_FORM
              end
            end
          end

          SIGNATURES = Signatures.constants.map do |const|
            Signatures.const_get(const)
          end.freeze
        end
      end
    end
  end
end
