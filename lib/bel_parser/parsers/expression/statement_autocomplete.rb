
=begin


=end

# begin ruby
require_relative '../../vendor/ast/processor/mixin'
require_relative '../ast/node'
require_relative '../mixin/buffer'
require_relative '../nonblocking_io_wrapper'
require_relative '../tracer'

module BELParser
  module Parsers
    module Expression
      module StatementAutocomplete

        class << self

          MAX_LENGTH = 1024 * 128 # 128K

          def parse(content, caret_position)
            return nil unless content

            if !content.end_with?("\n")
              content = "#{content}\n"
            end

            parser = Parser.new(content, caret_position)
            parser.each do |ast|
              return [ast, parser.space_adjusted_caret_position]
            end
          end
        end

        private

        class Parser
          include Enumerable
          include BELParser::Parsers::Buffer
          include BELParser::Parsers::AST
          include BELParser::Parsers::AST::Sexp
          include BELParser::Parsers::Tracer

          attr_reader :space_adjusted_caret_position

          def initialize(content, caret_position)
            @content                       = content
            @original_caret                = caret_position
            @space_adjusted_caret_position = caret_position
            
class << self
	attr_accessor :_statement_autocomplete_trans_keys
	private :_statement_autocomplete_trans_keys, :_statement_autocomplete_trans_keys=
end
self._statement_autocomplete_trans_keys = [
	9, 122, 9, 32, 10, 92, 
	10, 92, 48, 122, 33, 
	126, 33, 126, 0
]

class << self
	attr_accessor :_statement_autocomplete_key_spans
	private :_statement_autocomplete_key_spans, :_statement_autocomplete_key_spans=
end
self._statement_autocomplete_key_spans = [
	114, 24, 83, 83, 75, 94, 94
]

class << self
	attr_accessor :_statement_autocomplete_index_offsets
	private :_statement_autocomplete_index_offsets, :_statement_autocomplete_index_offsets=
end
self._statement_autocomplete_index_offsets = [
	0, 115, 140, 224, 308, 384, 479
]

class << self
	attr_accessor :_statement_autocomplete_indicies
	private :_statement_autocomplete_indicies, :_statement_autocomplete_indicies=
end
self._statement_autocomplete_indicies = [
	1, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 1, 
	0, 2, 0, 0, 0, 0, 0, 3, 
	4, 0, 0, 5, 0, 0, 0, 6, 
	6, 6, 6, 6, 6, 6, 6, 6, 
	6, 7, 0, 0, 0, 0, 0, 0, 
	6, 6, 6, 6, 6, 6, 6, 6, 
	6, 6, 6, 6, 6, 6, 6, 6, 
	6, 6, 6, 6, 6, 6, 6, 6, 
	6, 6, 0, 0, 0, 0, 6, 0, 
	6, 6, 6, 6, 6, 6, 6, 6, 
	6, 6, 6, 6, 6, 6, 6, 6, 
	6, 6, 6, 6, 6, 6, 6, 6, 
	6, 6, 0, 1, 8, 8, 8, 8, 
	8, 8, 8, 8, 8, 8, 8, 8, 
	8, 8, 8, 8, 8, 8, 8, 8, 
	8, 8, 1, 8, 9, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 10, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 11, 2, 
	9, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 11, 2, 6, 6, 6, 6, 
	6, 6, 6, 6, 6, 6, 12, 12, 
	12, 12, 12, 12, 12, 6, 6, 6, 
	6, 6, 6, 6, 6, 6, 6, 6, 
	6, 6, 6, 6, 6, 6, 6, 6, 
	6, 6, 6, 6, 6, 6, 6, 12, 
	12, 12, 12, 6, 12, 6, 6, 6, 
	6, 6, 6, 6, 6, 6, 6, 6, 
	6, 6, 6, 6, 6, 6, 6, 6, 
	6, 6, 6, 6, 6, 6, 6, 12, 
	14, 14, 14, 14, 14, 14, 14, 14, 
	14, 14, 14, 14, 14, 14, 14, 14, 
	14, 14, 14, 14, 14, 14, 14, 14, 
	14, 14, 14, 14, 14, 14, 14, 14, 
	14, 14, 14, 14, 14, 14, 14, 14, 
	14, 14, 14, 14, 14, 14, 14, 14, 
	14, 14, 14, 14, 14, 14, 14, 14, 
	14, 14, 14, 14, 14, 14, 14, 14, 
	14, 14, 14, 14, 14, 14, 14, 14, 
	14, 14, 14, 14, 14, 14, 14, 14, 
	14, 14, 14, 14, 14, 14, 14, 14, 
	14, 14, 14, 14, 14, 14, 13, 14, 
	14, 14, 14, 14, 14, 14, 14, 14, 
	14, 14, 14, 14, 14, 14, 14, 14, 
	14, 14, 14, 14, 14, 14, 14, 14, 
	14, 14, 14, 14, 14, 14, 14, 14, 
	14, 14, 14, 14, 14, 14, 14, 14, 
	14, 14, 14, 14, 14, 14, 14, 14, 
	14, 14, 14, 14, 14, 14, 14, 14, 
	14, 14, 14, 14, 14, 14, 14, 14, 
	14, 14, 14, 14, 14, 14, 14, 14, 
	14, 14, 14, 14, 14, 14, 14, 14, 
	14, 14, 14, 14, 14, 14, 14, 14, 
	14, 14, 14, 14, 14, 15, 0
]

class << self
	attr_accessor :_statement_autocomplete_trans_targs
	private :_statement_autocomplete_trans_targs, :_statement_autocomplete_trans_targs=
end
self._statement_autocomplete_trans_targs = [
	0, 1, 2, 0, 0, 0, 4, 0, 
	0, 0, 0, 3, 0, 5, 6, 5
]

class << self
	attr_accessor :_statement_autocomplete_trans_actions
	private :_statement_autocomplete_trans_actions, :_statement_autocomplete_trans_actions=
end
self._statement_autocomplete_trans_actions = [
	3, 0, 0, 4, 5, 6, 0, 7, 
	8, 9, 10, 0, 11, 12, 0, 13
]

class << self
	attr_accessor :_statement_autocomplete_to_state_actions
	private :_statement_autocomplete_to_state_actions, :_statement_autocomplete_to_state_actions=
end
self._statement_autocomplete_to_state_actions = [
	1, 0, 0, 0, 0, 1, 0
]

class << self
	attr_accessor :_statement_autocomplete_from_state_actions
	private :_statement_autocomplete_from_state_actions, :_statement_autocomplete_from_state_actions=
end
self._statement_autocomplete_from_state_actions = [
	2, 0, 0, 0, 0, 2, 0
]

class << self
	attr_accessor :_statement_autocomplete_eof_trans
	private :_statement_autocomplete_eof_trans, :_statement_autocomplete_eof_trans=
end
self._statement_autocomplete_eof_trans = [
	0, 9, 10, 10, 13, 0, 16
]

class << self
	attr_accessor :statement_autocomplete_start
end
self.statement_autocomplete_start = 0;
class << self
	attr_accessor :statement_autocomplete_first_final
end
self.statement_autocomplete_first_final = 0;
class << self
	attr_accessor :statement_autocomplete_error
end
self.statement_autocomplete_error = -1;

class << self
	attr_accessor :statement_autocomplete_en_relationship
end
self.statement_autocomplete_en_relationship = 5;
class << self
	attr_accessor :statement_autocomplete_en_term
end
self.statement_autocomplete_en_term = 0;


          end

          def each
            @last_state      = nil
            @spaces          = 0
            @value           = nil
            @prefix          = nil
            @param           = nil
            @term_stack      = []
            @statement_stack = [statement(nil, nil, nil)]
            @paren_counter   = 0
            @relationship    = nil
            @bel_part        = :term

            stack            = []
            data             = @content.unpack('C*')
            p                = 0
            pe               = data.length
            eof              = data.length

            # begin: ragel
            
begin
	p ||= 0
	pe ||= data.length
	cs = statement_autocomplete_start
	top = 0
	ts = nil
	te = nil
	act = 0
end

            
begin
	testEof = false
	_slen, _trans, _keys, _inds, _acts, _nacts = nil
	_goto_level = 0
	_resume = 10
	_eof_trans = 15
	_again = 20
	_test_eof = 30
	_out = 40
	while true
	if _goto_level <= 0
	if p == pe
		_goto_level = _test_eof
		next
	end
	end
	if _goto_level <= _resume
	case _statement_autocomplete_from_state_actions[cs] 
	when 2 then
		begin
ts = p
		end
	end
	_keys = cs << 1
	_inds = _statement_autocomplete_index_offsets[cs]
	_slen = _statement_autocomplete_key_spans[cs]
	_wide = data[p].ord
	_trans = if (   _slen > 0 && 
			_statement_autocomplete_trans_keys[_keys] <= _wide && 
			_wide <= _statement_autocomplete_trans_keys[_keys + 1] 
		    ) then
			_statement_autocomplete_indicies[ _inds + _wide - _statement_autocomplete_trans_keys[_keys] ] 
		 else 
			_statement_autocomplete_indicies[ _inds + _slen ]
		 end
	end
	if _goto_level <= _eof_trans
	cs = _statement_autocomplete_trans_targs[_trans]
	if _statement_autocomplete_trans_actions[_trans] != 0
	case _statement_autocomplete_trans_actions[_trans]
	when 12 then
		begin
te = p+1
 begin 
# begin ruby
    trace('EOF_RELATIONSHIP')

    @relationship =
      relationship(
        nil,
        character_range: [ts, ts])

    range_end =
      if @statement_stack[-1].object?
        @statement_stack[-1].object.range_end
      else
        @relationship.range_end
      end

    @statement_stack[-1] =
      statement(
        @statement_stack[-1].subject,
        @relationship,
        @statement_stack[-1].object,
        character_range: [@statement_stack[-1].range_start, range_end])

    # go back one char to force EOF on return to term scanner
    p -= 1

    # return to term scanner
    	begin
		top -= 1
		cs = stack[top]
		_goto_level = _again
		next
	end

# end ruby
   end
		end
	when 13 then
		begin
te = p
p = p - 1; begin 
# begin ruby
    trace('RELATIONSHIP')
    @last_state = :RELATIONSHIP

    @relationship =
      relationship(
        utf8_string(data[ts...te]),
        character_range: [ts, te])

    range_end =
      if @statement_stack[-1].object?
        @statement_stack[-1].object.range_end
      else
        @relationship.range_end
      end

    @statement_stack[-1] =
      statement(
        @statement_stack[-1].subject,
        @relationship,
        @statement_stack[-1].object,
        character_range: [@statement_stack[-1].range_start, range_end])

    # return to term scanner
    	begin
		top -= 1
		cs = stack[top]
		_goto_level = _again
		next
	end


# end ruby
   end
		end
	when 10 then
		begin
te = p+1
 begin 
# begin ruby
    trace('STRING')
    @last_state = :STRING

    @value =
      string(
        utf8_string(data[ts...te]),
        character_range: [ts, te])
    if !@prefix.nil?
      @param =
        parameter(
          @prefix,
          value(
            @value,
            character_range: @value.character_range),
          character_range: [@prefix.range_start, @value.range_end])
      @value = nil
    end
# end ruby
   end
		end
	when 4 then
		begin
te = p+1
 begin 
# begin ruby
    trace('O_PAREN')

    case @last_state
    when :RELATIONSHIP
      @statement_stack    << @statement_stack[-1]
      @statement_stack[-1] = statement(nil, nil, nil)
      @relationship        = nil

      @term_stack <<
        term(
          function(
            nil,
            character_range: [ts, ts]),
          character_range: [ts, te])
    else
      term =
        if @value == nil
          term(
            function(
              nil,
              character_range: [ts, ts]),
            character_range: [ts, te])
        else
          term(
            function(
              @value,
              character_range: @value.character_range),
            character_range: [@value.range_start, @value.range_end + 1])
        end

      @term_stack << term
      @value       = nil
    end

    @paren_counter += 1
    @last_state =  :O_PAREN
# end ruby
   end
		end
	when 5 then
		begin
te = p+1
 begin 
# begin ruby
    trace('C_PAREN')
    @paren_counter -= 1

    case @last_state
    when :COMMA, :O_PAREN
      function, *arguments = @term_stack[-1].children
      empty_argument      =
        argument(
          nil,
          character_range: [ts, ts])
      @term_stack[-1]     =
        term(
          *[function, arguments, empty_argument].flatten.compact,
          character_range: [function.range_start, te])
    else
      if !@param.nil?
        function, *arguments = @term_stack[-1].children
        arg_from_param      =
          argument(
            @param,
            character_range: @param.character_range)
        @term_stack[-1]     =
          term(
            *[function, arguments, arg_from_param].flatten.compact,
            character_range: [function.range_start, te])
        @param  = nil
        @prefix = nil
      elsif !@value.nil?
        function, *arguments = @term_stack[-1].children
        arg_from_value      =
          argument(
            parameter(
              nil,
              value(
                @value,
                character_range: @value.character_range),
              character_range: @value.character_range),
            character_range: @value.character_range)
        @term_stack[-1]     =
          term(
            *[function, arguments, arg_from_value].flatten.compact,
            character_range: [function.range_start, @value.range_end + 1])
        @value              = nil
      elsif !@prefix.nil?
        function, *arguments = @term_stack[-1].children
        arg_from_prefix     =
          argument(
            parameter(
              @prefix,
              value(
                identifier(
                  '',
                  character_range: [@prefix.range_end + 1, @prefix.range_end + 1]),
                character_range: [@prefix.range_end + 1, @prefix.range_end + 1]),
              character_range: @prefix.character_range),
            character_range: @prefix.character_range)
        @term_stack[-1]     =
          term(
            *[function, arguments, arg_from_prefix].flatten.compact,
            character_range: [function.range_start, @prefix.range_end + 1])
        @prefix             = nil
      else
        term = @term_stack[-1]
        term.character_range = [term.range_start, term.range_end + 1]
      end
    end

    if @term_stack.length > 1
      # pop stack
      inner = @term_stack.pop
      outer = @term_stack[-1]

      # reconstruct previous term on stack
      @term_stack[-1] =
        term(
          outer.function,
          *(outer.arguments << argument(inner, character_range: inner.character_range)),
          character_range: [outer.range_start, inner.range_end + 1])
    end

    trace("C_PAREN: @term_stack is\n#{@term_stack}")
    if @term_stack.length == 1
      @bel_part = :relationship
      trace("set @bel_part to #{@bel_part}")
    end

    @last_state = :C_PAREN
# end ruby
   end
		end
	when 7 then
		begin
te = p+1
 begin 
# begin ruby
    trace('COLON')
    @last_state = :COLON

    if !@value.nil?
      @prefix =
        prefix(
          @value,
          character_range: @value.character_range)
      @value = nil
    else
      @prefix =
        prefix(
          nil,
          character_range: [ts, ts])
    end
# end ruby
   end
		end
	when 6 then
		begin
te = p+1
 begin 
# begin ruby
    trace('COMMA')
    @last_state = :COMMA

    if !@term_stack.empty?
      if !@param.nil?
        function, *arguments = @term_stack[-1].children
        arg_from_param      =
          argument(
            @param,
            character_range: @param.character_range)
        @term_stack[-1]     =
          term(
            *([function, arguments, arg_from_param].flatten.compact),
            character_range: [function.range_start, @param.range_end + 1])
      elsif !@value.nil?
        function, *arguments = @term_stack[-1].children
        arg_from_value      =
          argument(
            parameter(
              nil,
              value(
                @value,
                character_range: @value.character_range),
              character_range: @value.character_range),
            character_range: @value.character_range)
        @term_stack[-1]     =
          term(
            *[function, arguments, arg_from_value].flatten.compact,
            character_range: [function.range_start, arg_from_value.range_end + 1])
      end
    end

    @param  = nil
    @prefix = nil
    @value  = nil
# end ruby
   end
		end
	when 3 then
		begin
te = p+1
 begin 
# begin ruby
    trace('EOF')

    if @term_stack.empty?
      # coerce what has been completed into a term
      if !@param.nil?
        @term_stack[0] =
          term(
            nil,
            argument(
              @param,
              character_range: @param.character_range),
            character_range: @param.character_range)
      elsif !@prefix.nil?
        range = [@prefix.range_start, @prefix.range_end + 1]
        @term_stack[0] =
          term(
            nil,
            argument(
              parameter(
                @prefix,
                nil,
                character_range: range),
              character_range: range),
            character_range: range)
      elsif !@value.nil?
        @term_stack[0] =
          term(
            nil,
            argument(
              parameter(
                nil,
                value(
                  @value,
                  character_range: @value.character_range),
                character_range: @value.character_range),
              character_range: @value.character_range),
            character_range: @value.character_range)
      end
    else
      case @last_state
      when :IDENT
        if !@param.nil?
          function, *arguments = @term_stack[-1].children
          arg_from_param      =
            argument(
              @param,
              character_range: @param.character_range)
          @term_stack[-1]     =
            term(
              *[function, arguments, arg_from_param].flatten.compact,
              character_range: [function.range_start, arg_from_param.range_end])
        elsif !@value.nil?
          function, *arguments = @term_stack[-1].children
          arg_from_value      =
            argument(
              parameter(
                nil,
                value(
                  @value,
                  character_range: @value.character_range),
                character_range: @value.character_range),
              character_range: @value.character_range)
          @term_stack[-1]     =
            term(
              *[function, arguments, arg_from_value].flatten.compact,
              character_range: [function.range_start, @value.range_end])
        end
      when :STRING
        if !@param.nil?
          function, *arguments = @term_stack[-1].children
          arg_from_param      =
            argument(
              @param,
              character_range: @param.character_range)
          @term_stack[-1]     =
            term(
              *[function, arguments, arg_from_param].flatten.compact,
              character_range: [function.range_start, arg_from_param.range_end])
        elsif !@value.nil?
          function, *arguments = @term_stack[-1].children
          arg_from_value      =
            argument(
              parameter(
                nil,
                value(
                  @value,
                  character_range: @value.character_range),
                character_range: @value.character_range),
              character_range: @value.character_range)
          @term_stack[-1]     =
            term(
              *[function, *arguments, arg_from_value],
              character_range: [function.range_start, arg_from_value.range_end])
        end
      when :COMMA, :O_PAREN
        function, *arguments = @term_stack[-1].children
        empty_argument      =
          argument(
            nil,
            character_range: [te - 1, te - 1])
        @term_stack[-1]     =
          term(
            *[function, *arguments, empty_argument],
            character_range: [function.range_start, empty_argument.range_end])
      when :COLON
        function, *arguments = @term_stack[-1].children
        empty_argument      =
          argument(
            parameter(
              @prefix,
              nil,
              character_range: [@prefix.range_start, @prefix.range_end + 1]),
            character_range: [@prefix.range_start, @prefix.range_end + 1])
        @term_stack[-1]     =
          term(
            *[function, *arguments, empty_argument].flatten.compact,
            character_range: [function.range_start, empty_argument.range_end])
      end
    end

    # iff we have completed any term-related node
    if !@term_stack.empty?
      # combine terms
      while @term_stack.length > 1
        # pop stack
        inner = @term_stack.pop
        outer = @term_stack[-1]

        # reconstruct previous term on stack
        @term_stack[-1] =
          term(
            outer.function,
            *(outer.arguments << argument(inner, character_range: inner.character_range)),
            character_range: [outer.range_start, inner.range_end + 1])
      end

      # add to statement_ast
      completed_term = @term_stack[-1]
      if @statement_stack[-1].subject.nil?
        @statement_stack[-1] =
          statement(
            subject(
              completed_term,
              character_range: completed_term.character_range),
            nil,
            nil,
            character_range: completed_term.character_range)
      elsif @statement_stack[-1].object.nil?
        object_node =
          object(
            completed_term,
            character_range: completed_term.character_range)
        @statement_stack[-1] =
          statement(
            @statement_stack[-1].subject,
            @statement_stack[-1].relationship,
            object_node,
            character_range: [@statement_stack[-1].range_start, object_node.range_end])
      end
    end

    # yield statement
    while @statement_stack.length > 1
      # pop stack
      nested = @statement_stack.pop
      outer  = @statement_stack[-1]

      # reconstruct previous statement on stack
      @statement_stack[-1] =
        statement(
          outer.subject,
          outer.relationship,
          object(
            nested,
            character_range: nested.character_range),
          character_range: [outer.range_start, nested.range_end + 1])
    end
    yield @statement_stack.pop
# end ruby
   end
		end
	when 11 then
		begin
te = p
p = p - 1; begin 
# begin ruby
    trace('IDENT')
    @last_state = :IDENT

    @value =
      identifier(
        utf8_string(data[ts...te]),
        character_range: [ts, te])
    if !@prefix.nil?
      @param =
        parameter(
          @prefix,
          value(
            @value,
            character_range: @value.character_range),
          character_range: [@prefix.range_start, @value.range_end])
      @value = nil
    end
# end ruby
   end
		end
	when 9 then
		begin
te = p
p = p - 1; begin 
# begin ruby
    trace('STRING')
    @last_state = :STRING

    @value =
      string(
        utf8_string(data[ts...te]),
        character_range: [ts, te])
    if !@prefix.nil?
      @param =
        parameter(
          @prefix,
          value(
            @value,
            character_range: @value.character_range),
          character_range: [@prefix.range_start, @value.range_end])
      @value = nil
    end
# end ruby
   end
		end
	when 8 then
		begin
te = p
p = p - 1; begin 
# begin ruby
    spaces = te-ts
    trace("SPACES (#{spaces})")

    case @bel_part
    when :relationship
      if @relationship
        spaces -= 1
        @bel_part   = :term

        # remove spaces and adjust pointers by the number of spaces removed
        data.slice!(ts, spaces)
        p   -= spaces
        pe  -= spaces
        eof -= spaces

        if @original_caret > ts
          if @original_caret < te
            @space_adjusted_caret_position -= (@original_caret - ts)
          else
            @space_adjusted_caret_position -= spaces
          end
        end
      else
        spaces -= 1
        # remove spaces and adjust pointers by the number of spaces removed
        data.slice!(ts, spaces)
        p   -= spaces
        pe  -= spaces
        eof -= spaces

        if @original_caret > ts
          if @original_caret < te
            @space_adjusted_caret_position -= (@original_caret - ts)
          else
            @space_adjusted_caret_position -= spaces
          end
        end

        # pop off term; add to statement_ast
        completed_term = @term_stack[-1]
        if @statement_stack[-1].subject.nil?
          @statement_stack[-1] =
            statement(
              subject(
                completed_term,
                character_range: completed_term.character_range),
              nil,
              nil,
              character_range: completed_term.character_range)
        elsif @statement_stack[-1].object.nil?
          object_node =
            object(
              completed_term,
              character_range: completed_term.character_range)
          @statement_stack[-1] =
            statement(
              @statement_stack[-1].subject,
              @statement_stack[-1].relationship,
              object_node,
              character_range: [@statement_stack[-1].range_start, object_node.range_end])
        end

        @term_stack = []

        # push the target state, jump to relationship scanner
        # ...eventually to return
        @relationship = nil
        	begin
		stack[top] = cs
		top+= 1
		cs = 5
		_goto_level = _again
		next
	end

      end
    when :term
      if @last_state == :COMMA
        spaces -= 1
      end

      # remove spaces and adjust pointers by the number of spaces removed
      data.slice!(ts, spaces)
      p   -= spaces
      pe  -= spaces
      eof -= spaces

      if @original_caret > ts
        if @original_caret < te
          @space_adjusted_caret_position -= (@original_caret - ts)
        else
          @space_adjusted_caret_position -= spaces
        end
      end
    end
# end ruby
   end
		end
	end
	end
	end
	if _goto_level <= _again
	case _statement_autocomplete_to_state_actions[cs] 
	when 1 then
		begin
ts = nil;		end
	end

	p += 1
	if p != pe
		_goto_level = _resume
		next
	end
	end
	if _goto_level <= _test_eof
	if p == eof
	if _statement_autocomplete_eof_trans[cs] > 0
		_trans = _statement_autocomplete_eof_trans[cs] - 1;
		_goto_level = _eof_trans
		next;
	end
	end

	end
	if _goto_level <= _out
		break
	end
end
	end

            # end: ragel
          end
        end
      end
    end
  end
end

if __FILE__ == $0
  require 'bel_parser/parsers/serializer'
  class ::AST::Node
    include BELParser::Parsers

    def _metadata
      ivars = instance_variables - [:@type, :@children, :@hash]
      ivars.map { |iv| [iv, instance_variable_get(iv)] }.to_s
    end
    private :_metadata

    def to_sexp(indent=0)
      indented = "  " * indent
      sexp = "#{indented}(#{fancy_type} #{_metadata}"

      first_node_child = children.index do |child|
        child.is_a?(::AST::Node) || child.is_a?(Array)
      end || children.count

      children.each_with_index do |child, idx|
        if child.is_a?(::AST::Node) && idx >= first_node_child
          sexp << "\n#{child.to_sexp(indent + 1)}"
        else
          sexp << " #{child.inspect}"
        end
      end

      sexp << ")"

      sexp
    end

    def to_bel
      serialize(self)
    end
  end

  $stdin.each_line do |line|
    ast, caret = BELParser::Parsers::Expression::StatementAutocomplete.parse(
      line,
      line.length-1 # adjust for newline
    )
    puts ast.to_sexp(1)
    puts ast.to_bel
    puts "#{' ' * caret}|"
    puts "caret: #{caret}"
  end
end
# end ruby

# vim: ft=ragel ts=2 sw=2 expandtab:
# encoding: utf-8
