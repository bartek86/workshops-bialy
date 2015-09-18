# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

# User seed

5.times do
    User.create(
        email: Faker::Internet.email,
        password: Faker::Internet.password(8),
        firstname: Faker::Name.first_name,
        lastname: Faker::Name.last_name
    )
end


# admin seed

User.create(
    email: 'admin@example.com',
    password: 'admin123',
    firstname: 'The',
    lastname: 'Admin',
    admin: true)


# Category seed    
3.times do
   Category.create(
       name: Faker::Product.brand
    )
end

# Product seed
30.times do
    Product.create(
        title: Faker::Product.product,
        description: Faker::Lorem.paragraph,
        price: rand(1..100) + rand.round(2),
        category_id: rand(1..3),
        user_id: rand(1..5)
    )
end

# Review seed
300.times do
    Review.create(
        content: Faker::Lorem.paragraph,
        rating: rand(1..5),
        product_id: rand(1..30),
        user_id: rand(1..5)
        )
end 