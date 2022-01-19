# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Sports.Repo.insert!(%Sports.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
alias Sports.Repo

alias Sports.Arenas.Arena






# maintanance
Repo.insert!(%Arena{
  name: "zohaib",
  opens_at: 42,
  closes_at: 42,
  price_per_hour: 42,
  address: %{street: "exam", city: "laoe", country: "koo", state: "djk"},
  phone_number: %{country_code: 92, area_code: 00, number: 03204466051},

})
