
# begin: ragel
=begin

class << self
	attr_accessor :_bel_actions
	private :_bel_actions, :_bel_actions=
end
self._bel_actions = [
	0, 1, 1, 1, 5, 2, 0, 1, 
	2, 2, 3, 2, 2, 8, 2, 4, 
	5, 2, 6, 7, 3, 2, 10, 11, 
	3, 6, 9, 11
]

class << self
	attr_accessor :_bel_key_offsets
	private :_bel_key_offsets, :_bel_key_offsets=
end
self._bel_key_offsets = [
	0, 0, 10, 20, 22, 23, 24, 32, 
	41, 48, 56, 57, 59, 60, 61, 61, 
	61
]

class << self
	attr_accessor :_bel_trans_keys
	private :_bel_trans_keys, :_bel_trans_keys=
end
self._bel_trans_keys = [
	9, 32, 34, 95, 48, 57, 65, 90, 
	97, 122, 9, 32, 34, 95, 48, 57, 
	65, 90, 97, 122, 34, 92, 10, 92, 
	10, 95, 48, 57, 65, 90, 97, 122, 
	10, 58, 95, 48, 57, 65, 90, 97, 
	122, 95, 48, 57, 65, 90, 97, 122, 
	10, 95, 48, 57, 65, 90, 97, 122, 
	34, 34, 92, 10, 92, 0
]

class << self
	attr_accessor :_bel_single_lengths
	private :_bel_single_lengths, :_bel_single_lengths=
end
self._bel_single_lengths = [
	0, 4, 4, 2, 1, 1, 2, 3, 
	1, 2, 1, 2, 1, 1, 0, 0, 
	0
]

class << self
	attr_accessor :_bel_range_lengths
	private :_bel_range_lengths, :_bel_range_lengths=
end
self._bel_range_lengths = [
	0, 3, 3, 0, 0, 0, 3, 3, 
	3, 3, 0, 0, 0, 0, 0, 0, 
	0
]

class << self
	attr_accessor :_bel_index_offsets
	private :_bel_index_offsets, :_bel_index_offsets=
end
self._bel_index_offsets = [
	0, 0, 8, 16, 19, 21, 23, 29, 
	36, 41, 47, 49, 52, 54, 56, 57, 
	58
]

class << self
	attr_accessor :_bel_indicies
	private :_bel_indicies, :_bel_indicies=
end
self._bel_indicies = [
	0, 0, 2, 3, 3, 3, 3, 1, 
	0, 0, 2, 4, 4, 4, 4, 1, 
	6, 7, 5, 8, 1, 7, 5, 9, 
	10, 10, 10, 10, 1, 9, 12, 11, 
	11, 11, 11, 1, 13, 13, 13, 13, 
	1, 14, 15, 15, 15, 15, 1, 16, 
	1, 18, 19, 17, 20, 1, 19, 17, 
	1, 1, 1, 0
]

class << self
	attr_accessor :_bel_trans_targs
	private :_bel_trans_targs, :_bel_trans_targs=
end
self._bel_trans_targs = [
	2, 0, 3, 7, 6, 3, 4, 5, 
	14, 14, 6, 7, 2, 9, 15, 9, 
	11, 11, 12, 13, 16
]

class << self
	attr_accessor :_bel_trans_actions
	private :_bel_trans_actions, :_bel_trans_actions=
end
self._bel_trans_actions = [
	0, 0, 14, 5, 5, 3, 3, 3, 
	24, 20, 1, 1, 11, 5, 8, 1, 
	14, 3, 3, 3, 17
]

class << self
	attr_accessor :bel_start
end
self.bel_start = 1;
class << self
	attr_accessor :bel_first_final
end
self.bel_first_final = 14;
class << self
	attr_accessor :bel_error
end
self.bel_error = 0;

class << self
	attr_accessor :bel_en_ident
end
self.bel_en_ident = 8;
class << self
	attr_accessor :bel_en_string
end
self.bel_en_string = 10;
class << self
	attr_accessor :bel_en_bel_parameter
end
self.bel_en_bel_parameter = 1;


begin
	p ||= 0
	pe ||= data.length
	cs = bel_start
end

begin
	_klen, _trans, _keys, _acts, _nacts = nil
	_goto_level = 0
	_resume = 10
	_eof_trans = 15
	_again = 20
	_test_eof = 30
	_out = 40
	while true
	_trigger_goto = false
	if _goto_level <= 0
	if p == pe
		_goto_level = _test_eof
		next
	end
	if cs == 0
		_goto_level = _out
		next
	end
	end
	if _goto_level <= _resume
	_keys = _bel_key_offsets[cs]
	_trans = _bel_index_offsets[cs]
	_klen = _bel_single_lengths[cs]
	_break_match = false
	
	begin
	  if _klen > 0
	     _lower = _keys
	     _upper = _keys + _klen - 1

	     loop do
	        break if _upper < _lower
	        _mid = _lower + ( (_upper - _lower) >> 1 )

	        if data[p].ord < _bel_trans_keys[_mid]
	           _upper = _mid - 1
	        elsif data[p].ord > _bel_trans_keys[_mid]
	           _lower = _mid + 1
	        else
	           _trans += (_mid - _keys)
	           _break_match = true
	           break
	        end
	     end # loop
	     break if _break_match
	     _keys += _klen
	     _trans += _klen
	  end
	  _klen = _bel_range_lengths[cs]
	  if _klen > 0
	     _lower = _keys
	     _upper = _keys + (_klen << 1) - 2
	     loop do
	        break if _upper < _lower
	        _mid = _lower + (((_upper-_lower) >> 1) & ~1)
	        if data[p].ord < _bel_trans_keys[_mid]
	          _upper = _mid - 2
	        elsif data[p].ord > _bel_trans_keys[_mid+1]
	          _lower = _mid + 2
	        else
	          _trans += ((_mid - _keys) >> 1)
	          _break_match = true
	          break
	        end
	     end # loop
	     break if _break_match
	     _trans += _klen
	  end
	end while false
	_trans = _bel_indicies[_trans]
	cs = _bel_trans_targs[_trans]
	if _bel_trans_actions[_trans] != 0
		_acts = _bel_trans_actions[_trans]
		_nacts = _bel_actions[_acts]
		_acts += 1
		while _nacts > 0
			_nacts -= 1
			_acts += 1
			case _bel_actions[_acts - 1]
when 0 then
		begin

    @buffers[:ident] = []
  		end
when 1 then
		begin

    @buffers[:ident] << data[p].ord
  		end
when 2 then
		begin

    @buffers[:ident] = s(:identifier,
                         utf8_string(@buffers[:ident]))
  		end
when 3 then
		begin

    yield @buffers[:ident]
  		end
when 4 then
		begin

    @buffers[:string] = []
  		end
when 5 then
		begin

    @buffers[:string] << data[p].ord
  		end
when 6 then
		begin

    @buffers[:string] = s(:string,
                          utf8_string(@buffers[:string]))
  		end
when 7 then
		begin

    yield @buffers[:string]
  		end
when 8 then
		begin

    @parameter = s(:parameter,
                   s(:prefix, @buffers[:ident]))
  		end
when 9 then
		begin

    @parameter ||= s(:parameter, s(:prefix, nil))
    @parameter   = @parameter << s(:value, @buffers[:string])
  		end
when 10 then
		begin

    @parameter ||= s(:parameter, s(:prefix, nil))
    @parameter   = @parameter << s(:value, @buffers[:ident])
  		end
when 11 then
		begin

    yield @parameter
  		end
			end # action switch
		end
	end
	if _trigger_goto
		next
	end
	end
	if _goto_level <= _again
	if cs == 0
		_goto_level = _out
		next
	end
	p += 1
	if p != pe
		_goto_level = _resume
		next
	end
	end
	if _goto_level <= _test_eof
	end
	if _goto_level <= _out
		break
	end
	end
	end

class << self
	attr_accessor :_bel_actions
	private :_bel_actions, :_bel_actions=
end
self._bel_actions = [
	0, 1, 1, 1, 5, 2, 0, 1, 
	2, 2, 3, 2, 2, 8, 2, 4, 
	5, 2, 6, 7, 3, 2, 10, 11, 
	3, 6, 9, 11
]

class << self
	attr_accessor :_bel_key_offsets
	private :_bel_key_offsets, :_bel_key_offsets=
end
self._bel_key_offsets = [
	0, 0, 10, 20, 22, 23, 24, 32, 
	41, 48, 56, 57, 59, 60, 61, 61, 
	61
]

class << self
	attr_accessor :_bel_trans_keys
	private :_bel_trans_keys, :_bel_trans_keys=
end
self._bel_trans_keys = [
	9, 32, 34, 95, 48, 57, 65, 90, 
	97, 122, 9, 32, 34, 95, 48, 57, 
	65, 90, 97, 122, 34, 92, 10, 92, 
	10, 95, 48, 57, 65, 90, 97, 122, 
	10, 58, 95, 48, 57, 65, 90, 97, 
	122, 95, 48, 57, 65, 90, 97, 122, 
	10, 95, 48, 57, 65, 90, 97, 122, 
	34, 34, 92, 10, 92, 0
]

class << self
	attr_accessor :_bel_single_lengths
	private :_bel_single_lengths, :_bel_single_lengths=
end
self._bel_single_lengths = [
	0, 4, 4, 2, 1, 1, 2, 3, 
	1, 2, 1, 2, 1, 1, 0, 0, 
	0
]

class << self
	attr_accessor :_bel_range_lengths
	private :_bel_range_lengths, :_bel_range_lengths=
end
self._bel_range_lengths = [
	0, 3, 3, 0, 0, 0, 3, 3, 
	3, 3, 0, 0, 0, 0, 0, 0, 
	0
]

class << self
	attr_accessor :_bel_index_offsets
	private :_bel_index_offsets, :_bel_index_offsets=
end
self._bel_index_offsets = [
	0, 0, 8, 16, 19, 21, 23, 29, 
	36, 41, 47, 49, 52, 54, 56, 57, 
	58
]

class << self
	attr_accessor :_bel_indicies
	private :_bel_indicies, :_bel_indicies=
end
self._bel_indicies = [
	0, 0, 2, 3, 3, 3, 3, 1, 
	0, 0, 2, 4, 4, 4, 4, 1, 
	6, 7, 5, 8, 1, 7, 5, 9, 
	10, 10, 10, 10, 1, 9, 12, 11, 
	11, 11, 11, 1, 13, 13, 13, 13, 
	1, 14, 15, 15, 15, 15, 1, 16, 
	1, 18, 19, 17, 20, 1, 19, 17, 
	1, 1, 1, 0
]

class << self
	attr_accessor :_bel_trans_targs
	private :_bel_trans_targs, :_bel_trans_targs=
end
self._bel_trans_targs = [
	2, 0, 3, 7, 6, 3, 4, 5, 
	14, 14, 6, 7, 2, 9, 15, 9, 
	11, 11, 12, 13, 16
]

class << self
	attr_accessor :_bel_trans_actions
	private :_bel_trans_actions, :_bel_trans_actions=
end
self._bel_trans_actions = [
	0, 0, 14, 5, 5, 3, 3, 3, 
	24, 20, 1, 1, 11, 5, 8, 1, 
	14, 3, 3, 3, 17
]

class << self
	attr_accessor :bel_start
end
self.bel_start = 1;
class << self
	attr_accessor :bel_first_final
end
self.bel_first_final = 14;
class << self
	attr_accessor :bel_error
end
self.bel_error = 0;

class << self
	attr_accessor :bel_en_ident
end
self.bel_en_ident = 8;
class << self
	attr_accessor :bel_en_string
end
self.bel_en_string = 10;
class << self
	attr_accessor :bel_en_bel_parameter
end
self.bel_en_bel_parameter = 1;


begin
	p ||= 0
	pe ||= data.length
	cs = bel_start
end

begin
	_klen, _trans, _keys, _acts, _nacts = nil
	_goto_level = 0
	_resume = 10
	_eof_trans = 15
	_again = 20
	_test_eof = 30
	_out = 40
	while true
	_trigger_goto = false
	if _goto_level <= 0
	if p == pe
		_goto_level = _test_eof
		next
	end
	if cs == 0
		_goto_level = _out
		next
	end
	end
	if _goto_level <= _resume
	_keys = _bel_key_offsets[cs]
	_trans = _bel_index_offsets[cs]
	_klen = _bel_single_lengths[cs]
	_break_match = false
	
	begin
	  if _klen > 0
	     _lower = _keys
	     _upper = _keys + _klen - 1

	     loop do
	        break if _upper < _lower
	        _mid = _lower + ( (_upper - _lower) >> 1 )

	        if data[p].ord < _bel_trans_keys[_mid]
	           _upper = _mid - 1
	        elsif data[p].ord > _bel_trans_keys[_mid]
	           _lower = _mid + 1
	        else
	           _trans += (_mid - _keys)
	           _break_match = true
	           break
	        end
	     end # loop
	     break if _break_match
	     _keys += _klen
	     _trans += _klen
	  end
	  _klen = _bel_range_lengths[cs]
	  if _klen > 0
	     _lower = _keys
	     _upper = _keys + (_klen << 1) - 2
	     loop do
	        break if _upper < _lower
	        _mid = _lower + (((_upper-_lower) >> 1) & ~1)
	        if data[p].ord < _bel_trans_keys[_mid]
	          _upper = _mid - 2
	        elsif data[p].ord > _bel_trans_keys[_mid+1]
	          _lower = _mid + 2
	        else
	          _trans += ((_mid - _keys) >> 1)
	          _break_match = true
	          break
	        end
	     end # loop
	     break if _break_match
	     _trans += _klen
	  end
	end while false
	_trans = _bel_indicies[_trans]
	cs = _bel_trans_targs[_trans]
	if _bel_trans_actions[_trans] != 0
		_acts = _bel_trans_actions[_trans]
		_nacts = _bel_actions[_acts]
		_acts += 1
		while _nacts > 0
			_nacts -= 1
			_acts += 1
			case _bel_actions[_acts - 1]
when 0 then
		begin

    @buffers[:ident] = []
  		end
when 1 then
		begin

    @buffers[:ident] << data[p].ord
  		end
when 2 then
		begin

    @buffers[:ident] = s(:identifier,
                         utf8_string(@buffers[:ident]))
  		end
when 3 then
		begin

    yield @buffers[:ident]
  		end
when 4 then
		begin

    @buffers[:string] = []
  		end
when 5 then
		begin

    @buffers[:string] << data[p].ord
  		end
when 6 then
		begin

    @buffers[:string] = s(:string,
                          utf8_string(@buffers[:string]))
  		end
when 7 then
		begin

    yield @buffers[:string]
  		end
when 8 then
		begin

    @parameter = s(:parameter,
                   s(:prefix, @buffers[:ident]))
  		end
when 9 then
		begin

    @parameter ||= s(:parameter, s(:prefix, nil))
    @parameter   = @parameter << s(:value, @buffers[:string])
  		end
when 10 then
		begin

    @parameter ||= s(:parameter, s(:prefix, nil))
    @parameter   = @parameter << s(:value, @buffers[:ident])
  		end
when 11 then
		begin

    yield @parameter
  		end
			end # action switch
		end
	end
	if _trigger_goto
		next
	end
	end
	if _goto_level <= _again
	if cs == 0
		_goto_level = _out
		next
	end
	p += 1
	if p != pe
		_goto_level = _resume
		next
	end
	end
	if _goto_level <= _test_eof
	end
	if _goto_level <= _out
		break
	end
	end
	end


=end
# end: ragel

require          'ast'
require_relative 'mixin/buffer'
require_relative 'nonblocking_io_wrapper'

module Parameter

  class << self

    MAX_LENGTH = 1024 * 128 # 128K

    def parse(content)
      return nil unless content

      Parser.new(content).each do |obj|
        yield obj
      end
    end
  end

  private

  class Parser
    include Enumerable
    include AST::Sexp
		include BEL::Parser::Buffer

    def initialize(content)
      @content = content
# begin: ragel        
      
class << self
	attr_accessor :_bel_actions
	private :_bel_actions, :_bel_actions=
end
self._bel_actions = [
	0, 1, 1, 1, 5, 2, 0, 1, 
	2, 2, 3, 2, 2, 8, 2, 4, 
	5, 2, 6, 7, 3, 2, 10, 11, 
	3, 6, 9, 11
]

class << self
	attr_accessor :_bel_key_offsets
	private :_bel_key_offsets, :_bel_key_offsets=
end
self._bel_key_offsets = [
	0, 0, 10, 20, 22, 23, 24, 32, 
	41, 48, 56, 57, 59, 60, 61, 61, 
	61
]

class << self
	attr_accessor :_bel_trans_keys
	private :_bel_trans_keys, :_bel_trans_keys=
end
self._bel_trans_keys = [
	9, 32, 34, 95, 48, 57, 65, 90, 
	97, 122, 9, 32, 34, 95, 48, 57, 
	65, 90, 97, 122, 34, 92, 10, 92, 
	10, 95, 48, 57, 65, 90, 97, 122, 
	10, 58, 95, 48, 57, 65, 90, 97, 
	122, 95, 48, 57, 65, 90, 97, 122, 
	10, 95, 48, 57, 65, 90, 97, 122, 
	34, 34, 92, 10, 92, 0
]

class << self
	attr_accessor :_bel_single_lengths
	private :_bel_single_lengths, :_bel_single_lengths=
end
self._bel_single_lengths = [
	0, 4, 4, 2, 1, 1, 2, 3, 
	1, 2, 1, 2, 1, 1, 0, 0, 
	0
]

class << self
	attr_accessor :_bel_range_lengths
	private :_bel_range_lengths, :_bel_range_lengths=
end
self._bel_range_lengths = [
	0, 3, 3, 0, 0, 0, 3, 3, 
	3, 3, 0, 0, 0, 0, 0, 0, 
	0
]

class << self
	attr_accessor :_bel_index_offsets
	private :_bel_index_offsets, :_bel_index_offsets=
end
self._bel_index_offsets = [
	0, 0, 8, 16, 19, 21, 23, 29, 
	36, 41, 47, 49, 52, 54, 56, 57, 
	58
]

class << self
	attr_accessor :_bel_indicies
	private :_bel_indicies, :_bel_indicies=
end
self._bel_indicies = [
	0, 0, 2, 3, 3, 3, 3, 1, 
	0, 0, 2, 4, 4, 4, 4, 1, 
	6, 7, 5, 8, 1, 7, 5, 9, 
	10, 10, 10, 10, 1, 9, 12, 11, 
	11, 11, 11, 1, 13, 13, 13, 13, 
	1, 14, 15, 15, 15, 15, 1, 16, 
	1, 18, 19, 17, 20, 1, 19, 17, 
	1, 1, 1, 0
]

class << self
	attr_accessor :_bel_trans_targs
	private :_bel_trans_targs, :_bel_trans_targs=
end
self._bel_trans_targs = [
	2, 0, 3, 7, 6, 3, 4, 5, 
	14, 14, 6, 7, 2, 9, 15, 9, 
	11, 11, 12, 13, 16
]

class << self
	attr_accessor :_bel_trans_actions
	private :_bel_trans_actions, :_bel_trans_actions=
end
self._bel_trans_actions = [
	0, 0, 14, 5, 5, 3, 3, 3, 
	24, 20, 1, 1, 11, 5, 8, 1, 
	14, 3, 3, 3, 17
]

class << self
	attr_accessor :bel_start
end
self.bel_start = 1;
class << self
	attr_accessor :bel_first_final
end
self.bel_first_final = 14;
class << self
	attr_accessor :bel_error
end
self.bel_error = 0;

class << self
	attr_accessor :bel_en_ident
end
self.bel_en_ident = 8;
class << self
	attr_accessor :bel_en_string
end
self.bel_en_string = 10;
class << self
	attr_accessor :bel_en_bel_parameter
end
self.bel_en_bel_parameter = 1;


# end: ragel        
    end

    def each
			@buffers = {}
      data = @content.unpack('C*')
      p   = 0
      pe  = data.length

# begin: ragel        
      
begin
	p ||= 0
	pe ||= data.length
	cs = bel_start
end

      
begin
	_klen, _trans, _keys, _acts, _nacts = nil
	_goto_level = 0
	_resume = 10
	_eof_trans = 15
	_again = 20
	_test_eof = 30
	_out = 40
	while true
	_trigger_goto = false
	if _goto_level <= 0
	if p == pe
		_goto_level = _test_eof
		next
	end
	if cs == 0
		_goto_level = _out
		next
	end
	end
	if _goto_level <= _resume
	_keys = _bel_key_offsets[cs]
	_trans = _bel_index_offsets[cs]
	_klen = _bel_single_lengths[cs]
	_break_match = false
	
	begin
	  if _klen > 0
	     _lower = _keys
	     _upper = _keys + _klen - 1

	     loop do
	        break if _upper < _lower
	        _mid = _lower + ( (_upper - _lower) >> 1 )

	        if data[p].ord < _bel_trans_keys[_mid]
	           _upper = _mid - 1
	        elsif data[p].ord > _bel_trans_keys[_mid]
	           _lower = _mid + 1
	        else
	           _trans += (_mid - _keys)
	           _break_match = true
	           break
	        end
	     end # loop
	     break if _break_match
	     _keys += _klen
	     _trans += _klen
	  end
	  _klen = _bel_range_lengths[cs]
	  if _klen > 0
	     _lower = _keys
	     _upper = _keys + (_klen << 1) - 2
	     loop do
	        break if _upper < _lower
	        _mid = _lower + (((_upper-_lower) >> 1) & ~1)
	        if data[p].ord < _bel_trans_keys[_mid]
	          _upper = _mid - 2
	        elsif data[p].ord > _bel_trans_keys[_mid+1]
	          _lower = _mid + 2
	        else
	          _trans += ((_mid - _keys) >> 1)
	          _break_match = true
	          break
	        end
	     end # loop
	     break if _break_match
	     _trans += _klen
	  end
	end while false
	_trans = _bel_indicies[_trans]
	cs = _bel_trans_targs[_trans]
	if _bel_trans_actions[_trans] != 0
		_acts = _bel_trans_actions[_trans]
		_nacts = _bel_actions[_acts]
		_acts += 1
		while _nacts > 0
			_nacts -= 1
			_acts += 1
			case _bel_actions[_acts - 1]
when 0 then
		begin

    @buffers[:ident] = []
  		end
when 1 then
		begin

    @buffers[:ident] << data[p].ord
  		end
when 2 then
		begin

    @buffers[:ident] = s(:identifier,
                         utf8_string(@buffers[:ident]))
  		end
when 3 then
		begin

    yield @buffers[:ident]
  		end
when 4 then
		begin

    @buffers[:string] = []
  		end
when 5 then
		begin

    @buffers[:string] << data[p].ord
  		end
when 6 then
		begin

    @buffers[:string] = s(:string,
                          utf8_string(@buffers[:string]))
  		end
when 7 then
		begin

    yield @buffers[:string]
  		end
when 8 then
		begin

    @parameter = s(:parameter,
                   s(:prefix, @buffers[:ident]))
  		end
when 9 then
		begin

    @parameter ||= s(:parameter, s(:prefix, nil))
    @parameter   = @parameter << s(:value, @buffers[:string])
  		end
when 10 then
		begin

    @parameter ||= s(:parameter, s(:prefix, nil))
    @parameter   = @parameter << s(:value, @buffers[:ident])
  		end
when 11 then
		begin

    yield @parameter
  		end
			end # action switch
		end
	end
	if _trigger_goto
		next
	end
	end
	if _goto_level <= _again
	if cs == 0
		_goto_level = _out
		next
	end
	p += 1
	if p != pe
		_goto_level = _resume
		next
	end
	end
	if _goto_level <= _test_eof
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

if __FILE__ == $0
  $stdin.each_line do |line|
    Parameter.parse(line) { |obj|
      puts obj.inspect
    }
  end
end

# vim: ft=ruby ts=2 sw=2:
# encoding: utf-8