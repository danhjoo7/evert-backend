UserItem.destroy_all
ItemCategory.destroy_all
Item.destroy_all
Category.destroy_all
User.destroy_all

size = ['S', 'M', 'L', 'XL', 'OS']

5.times do 
    User.create(name: Faker::Name.unique.name, username: Faker::Internet.unique.username, password: Faker::Internet.password, location: Faker::Address.city)
end

5.times do |i|
    Item.create(name: Faker::Commerce.product_name, brand: Faker::Appliance.brand, size: size[i] , price: Faker::Commerce.price , description: Faker::Marketing.buzzwords, buyer_id: User.all.sample.id, seller_id: User.all.sample.id )
end

5.times do 
    UserItem.create!(user_id: User.all.sample.id, item_id: Item.all.sample.id, favorite: Faker::Boolean.boolean)
end

10.times do
    Category.create(name: Faker::Commerce.department)
end

5.times do
    ItemCategory.create!(item_id: Item.all.sample.id, category_id: Category.all.sample.id)
end



