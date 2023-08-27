10.times do
    author = Author.create(
        name: Faker::Name.name,
        email: Faker::Internet.email
    )

    blog = Blog.create(
        title: Faker::Book.title,
        content: Faker::Quote.matz,
        author: author
    )

    feedback = Feedback.create(
        content: Faker::Quote.mitch_hedberg,
        blog: blog
    )
end