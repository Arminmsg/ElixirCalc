defmodule CalculatorTest do
  use ExUnit.Case
  doctest CalculatorApi.Calculator

  test "negative numbers" do
    assert CalculatorApi.Calculator.calculate("-5") == -5
  end

  test "positive numbers" do
    assert CalculatorApi.Calculator.calculate("5") == 5
  end

  test "addition" do
    assert CalculatorApi.Calculator.calculate("1+2+6") == 9
  end

  test "subtraction" do
    assert CalculatorApi.Calculator.calculate("1-50") == -49
  end

  test "param" do
    assert CalculatorApi.Calculator.calculate("(1+5)/12") == 0.5
  end

end
