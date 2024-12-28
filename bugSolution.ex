defmodule MyModule do
  def my_function(x) when x > 0 do
    x * 2
  end

  def my_function(x) when x <= 0 do
    raise ArgumentError, "Input must be greater than 0"
  end
end

IO.puts MyModule.my_function(5)  #Output: 10

try do
  IO.puts MyModule.my_function(-5)
catch
  error -> IO.puts "Error: " <> Exception.message(error)
  #Output: Error: Input must be greater than 0
end