defmodule MyModule do
  def my_function(x) do
    if x > 0 do
      x * 2
    else
      :error  #This is the problematic part
    end
  end
end

IO.puts MyModule.my_function(5) #Output: 10
IO.puts MyModule.my_function(-5) #Output: :error