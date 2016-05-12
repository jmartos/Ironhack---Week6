
(5..10).each do |time|
  user = User.create(name:"User #{time}", email: "mail#{time}@mail.com")
  rand(1..5).times.each do |time|
   product =  user.products.new(title:"Product #{time+1}", description:"Description for product #{time+1}", deadline: DateTime.now + 10.days)
    product.save
  end
end

# product.each do |review|
#   product.seller_reviews.new(author: User.find(rand(1..5)), review:"blabablabla")
#     review.save
#   end
puts "projects created"
