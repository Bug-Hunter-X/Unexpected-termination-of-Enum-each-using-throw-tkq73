```elixir
list = [1, 2, 3, 4, 5]

# Solution using Enum.reduce
result = Enum.reduce(list, [], fn x, acc ->
  case x do
    3 -> throw(:three) 
    _ -> [x | acc]  
  end
end)

IO.puts inspect(result)

# Solution using try-catch

try do
  Enum.each(list, fn x ->
    if x == 3 do
      throw(:three)
    end
    IO.puts(x)
  end)
rescue
  e -> IO.puts("Exception caught: #{inspect(e)}")
end
```