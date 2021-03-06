# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(
  email: "test@test.com",
  password: "password",
  password_confirmation: "password",
  name: "Admin User",
  roles: "site_admin"

)
puts "1 Admin user created"

User.create!(
  email: "test2@test.com",
  password: "password",
  password_confirmation: "password",
  name: "Regular User"
)
puts "1 Guest user created"

4.times do |topic|
  Topic.create!(
    title: "Topic #{topic}"
  )
end
puts "4 Topics created"

10.times do |blog|
  Blog.create!(
  title: "Blog Post #{blog}",
  body: "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, Lorem ipsum dolor sit amet.., comes from a line in section 1.10.32.",
  topic_id: Topic.last.id
)
end

puts "10 Blog posts was created"

6.times do |skill|
  Skill.create!(
    title: "RubyonRails #{skill}",
    percent_utilized: 12
  )
end

puts "6 Skills was created"

8.times do |portfolio|
  Portfolio.create!(
    title: "RubyonRails - #{portfolio}",
    subtitle: "Ruby Programming",
    body: "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus",
    display_image: "http://via.placeholder.com/600x400",
    thumb_image: "http://via.placeholder.com/350x200"
  )
end

1.times do |portfolio|
  Portfolio.create!(
    title: "RubyonRails - #{portfolio}",
    subtitle: "Javascript",
    body: "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus",
    display_image: "http://via.placeholder.com/600x400",
    thumb_image: "http://via.placeholder.com/350x200"
  )
end

puts "9 Portfolios was created"

3.times do |tech|
  Portfolio.last.technologies.create!(
    name: "Technology #{tech}",
  )
end

puts "3 Technologies was created"
