def ensure_question(str)
  str[-1] == '?' ? str : str.concat('?')
end
