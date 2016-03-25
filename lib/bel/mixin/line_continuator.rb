module BEL
  # LineContinuator module.
  module LineContinuator
    LINE_CONTINUATOR = "\\\n".freeze

    def expand_line_continuator(line, line_enumerator)
      while line.end_with?(LINE_CONTINUATOR)
        line.chomp!(LINE_CONTINUATOR)
        line += line_enumerator.next
      end
      line
    end
  end
end