# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



Job.delete_all

Job.create!(
    id: 1,
    company_name: "Tesla",
    company_website: "www.tesla.com",
    compensation_range: "130,000 - 140,000",
    compensation_type: "Full-time",
    estimated_hours: nil,
    featured: false,
    featured_until: nil,
    headquarters:"India",
    link_to_apply: "https://tesla.com/apply",
    price: 199,
    published_at: DateTime.now,
    remote: false,
    slug: "rails-developer-at-tesla",
    status: "published",
    title: "Rails Developer at Tesla",
    upsell_type: nil,
    years_of_experience: "5",
    user_id: User.find(4),
    description: "lorem ipdum daaer naks dd gneb adjbna sdiubad nksabd sdhbsv kjbsvb ashnoasd",
    company_description: "lorem ipdum daaer naks dd gneb adjbna sdiudf asdfhoajsdnf asdofhasd bad nksabd sdhbsv kjbsvb ashnoasd"
)

Job.create!(
    id: 2,
    company_name: "Google",
    company_website: "www.google.com",
    compensation_range: "100,000 - 120,000",
    compensation_type: "Contract",
    estimated_hours: "more than 100",
    featured: true,
    featured_until: 1.week.from_now.beginning_of_day,
    headquarters:"California",
    link_to_apply: "https://google.com/apply",
    price: 299,
    published_at: DateTime.now,
    remote: true,
    slug: "ruby-developer-at-google",
    status: "published",
    title: "ruby Developer at google",
    upsell_type: "best",
    years_of_experience: "5",
    user_id: User.find(5),
    description: "lorem ipdum daaer naks dd gneb adjbna sdiubad nksabd sdhbsv kjbsvb ashnoasd",
    company_description: "lorem ipdum daaer naks dd gneb adjbna sdiudf asdfhoajsdnf asdofhasd bad nksabd sdhbsv kjbsvb ashnoasd"
)

Job.create!(
    id: 3,
    company_name: "Dropbox",
    company_website: "www.dropbox.com",
    compensation_range: "100,000 - 120,000",
    compensation_type: "Contract",
    estimated_hours: "60-90",
    featured: false,
    featured_until: nil,
    headquarters:"New York",
    link_to_apply: "https://dropbox.com/apply",
    price: 199,
    published_at: DateTime.now,
    remote: false,
    slug: "ruby-developer-at-dropbox",
    status: "published",
    title: "ruby Developer at dropbox",
    upsell_type: nil,
    years_of_experience: "8",
    user_id: User.find(6),
    description: "lorem ipdum daaer naks dd gneb adjbna sdiubad nksabd sdhbsv kjbsvb ashnoasd",
    company_description: "lorem ipdum daaer naks dd gneb adjbna sdiudf asdfhoajsdnf asdofhasd bad nksabd sdhbsv kjbsvb ashnoasd"
)