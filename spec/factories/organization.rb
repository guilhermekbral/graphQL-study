FactoryBot.define do
  factory :organization do
    name { Faker::RickAndMorty.character }
    email 'pickle_riiiiiick@rickandmorty.com'
  end
end
