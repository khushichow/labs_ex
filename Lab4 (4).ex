defmodule Lab4 do
  @moduledoc """
    Fill in the functions for lab 4 below. Fuction skeletons with dummy return values are provided.
    Your task is to fill in these functions to accomplish what is described in the lab description.
    You may also add additional helper functions if you desire.
    Hint: You'll need to add tail recursive signatures. See the MyEnum examples from class
    for examples of this.
    Test your code by running 'mix test' from the cps506_lab4 directory in a terminal.
  """

  def isAscending?(i) do
    if length(i) == 1 or length(i) == 0 do
      true
    else
      if hd(i) < hd(tl(i)), do:
      isAscending?(tl(i)),
    else:
    false
    end
  end

  def onlyOddDigits?(x) do
    if rem(x, 10) == x do
      rem(x, 2) == 1
    else
      rem(rem(x, 10), 2) == 1 && onlyOddDigits?(div(x, 10))
    end
  end

  def tailFib(n) do
    tailFib(n , 1, 1)
  end

  defp tailFib(1, ac, _), do:
   ac
  defp tailFib(n, ac, b), do:
  tailFib(n - 1, b, ac+b)

  def giveChange(_n, []), do:
  :error

  def giveChange(i, coins) do
    if  hd(coins) > i do
      giveChange(i, tl(coins))
    else
      giveChange(i - hd(coins),
      coins, [hd(coins)])
    end
  end

  def giveChange(0, [], list), do:
  list
  def giveChange(_n, [], _list), do:
  :error

  def giveChange(n, coins, list) do
    if n < hd(coins) do
      giveChange(n, tl(coins), list)
    else
      list = list ++ [hd(coins)]
      giveChange(n - hd(coins), coins, list)
    end
  end

  def reduce(i, fun) do
    reduce(tl(i),
    hd(i), fun)
  end
  def reduce([], acc, _fun), do:
   acc
  def reduce(i, acc, fun) do
    reduce(tl(i),
    fun.
    (acc, hd(i)), fun)
  end
end
