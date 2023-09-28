# モジュールの定義
defmodule Intro do
  # パブリック関数の定義
  def hello do
    IO.puts("Hello, Elixir!")
  end

  # パターンマッチングを利用した関数
  def say(:hi) do
    "Hi there!"
  end
  def say(:bye) do
    "Goodbye!"
  end

  # 再帰を利用してリストの合計を計算
  def sum_list([]), do: 0
  def sum_list([head | tail]) do
    head + sum_list(tail)
  end
end

Intro.hello()
IO.puts(Intro.say(:hi))
IO.puts(Intro.say(:bye))
IO.puts(Intro.sum_list([1, 2, 3, 4, 5]))
