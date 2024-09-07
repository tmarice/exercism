defmodule FreelancerRates do
  def daily_rate(hourly_rate), do: 8.0 * hourly_rate

  def apply_discount(before_discount, discount), do: before_discount * (100.0 - discount) / 100

  def monthly_rate(hourly_rate, discount) do
    discounted_monthly_rate = apply_discount(22 * daily_rate(hourly_rate), discount)
    trunc(Float.ceil(discounted_monthly_rate))
  end

  def days_in_budget(budget, hourly_rate, discount) do
    discounted_daily_rate = apply_discount(daily_rate(hourly_rate), discount)
    num_days = budget / discounted_daily_rate
    Float.floor(num_days, 1)
  end
end
