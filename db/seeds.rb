# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Location.destroy_all

Location.create!([{
    name: "Snowy Night",
    description: "A cozy nightly stay for your furry baby",
    street: "425 Cozy Ln",
    city: "Denver",
    state: "CO",
    zipcode: "80014",
    phone: "720-123-3456",
    email: "cozy@night.com",
    photos: "https://blog.ferplast.com/wp-content/uploads/2021/01/neve-pericoli-gatto.jpg"
},
{
    name: "Tree Dwellers Paradise",
    description: "A great open space for tree dwelling kitties, plenty of space to jump and fly",
    street: "430 Tree Ln",
    city: "Costa Mesa",
    state: "CA",
    zipcode: "92626",
    phone: "714-234-4567",
    email: "tree@dwelling.com",
    photos: "https://essentiallypurrfect.co.uk/web/wp-content/uploads/2014/04/cat-paradise-home-collage-with-source.jpg"
    
},
{
    name: "Up the Wall",
    description: "Wall climbing for your kitties stay",
    street: "419 Wall Ln",
    city: "Dallas",
    state: "TX",
    zipcode: "75001",
    phone: "469-222-1234",
    email: "wall@kitty.com",
    photos: "http://iheartcats.com/wp-content/uploads/2015/08/Goldtatze1.jpg"
    
}])

p "Created #{Location.count} locations"