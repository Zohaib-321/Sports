#  mix run priv/repo/seeds.exs

alias Sports.Repo
alias Sports.Arenas.Arena
alias Sports.Arenas.Address
alias Sports.Arenas.PhoneNumber

# maintanance
Repo.insert!(%Arena{
  name: "zohaib",
  opens_at: 4,
  closes_at: 2,
  price_per_hour: 500,
  address: [
    %Address{street: "62-avenue", city: "lahore", country: "pakistan", state: "punjab"}
  ],
  phone_number: [
    %PhoneNumber{country_code: 92, area_code: 00, number: 03_204_466_051}
  ]
})
