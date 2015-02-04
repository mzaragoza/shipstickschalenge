Fabricator(:product) do
  name   { Faker::Movie.title }
  type   { ['Golf', 'Luggage', 'Ski'].sample }
  length {rand(200)}
  width  {rand(200)}
  width  {rand(200)}
  weight {rand(200)}
end
