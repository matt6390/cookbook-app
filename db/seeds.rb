User.create!([
  {name: "bob", email: "bobert@dilber.org", password_digest: "$2a$10$VPYvg5twGNMVbUMY9Ch5fu9FATB5jMOgDkgnIWi8ivlPNzzC9NJtK"}
])
Recipe.create!([
  {title: "Egg", chef: "Josh", ingredients: "One live chicken", directions: "grasp chicken firmly, squeeze... gently", image_url: nil, prep_time: nil, user_id: nil},
  {title: "Hand Sandwich", chef: "Bad Josh", ingredients: "Left hand, Right hand, lettuce, pickle, tomatoe, onion", directions: "Place lettuce, pickle, onion, and tomatoe on left hand. Put your hands together, Wisconsin", image_url: nil, prep_time: nil, user_id: nil}
])
