defmodule Sports.Factory do





    def build(:arena) do
      %Sports.Arenas.Arena{opens_at: 6, closes_at: 6 , name: "jkjk", price_per_hour: 1500}
    end

    def build(:address) do
      %Sports.Arenas.Address{street: "62-avenue", city: "lore", state: "ohio", country: "russia"}
    end


    def build(:phone_number) do
      %Sports.Arenas.PhoneNumber{country_code: +92, area_code: 03, number: 0909090}
    end



  end










  # def build(:post_with_comments) do
    #   %MyApp.Post{
    #     title: "hello with comments",
    #     comments: [
    #       build(:comment, body: "first"),
    #       build(:comment, body: "second")
    #     ]
    #   }
    # end
