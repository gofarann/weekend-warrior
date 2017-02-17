def hello_world name = nil # give default parameter
  if name == nil || name == ""
    "Hello, World!"
  else
    "Hello, #{name}!"
  end
end
