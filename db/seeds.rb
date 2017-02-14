# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: 'Juan',last_name: 'Ruiz', email: 'jumaru-97@hotmail.com',password_digest: '$2a$10$/9IMgFk6A8oi/KJHlduuneoKUn6xwN4Nk2BJZYLlj.d9UOcLjjlXC',last_login: '10/02/2017',ip: '10584962')
Category.create(name: 'Tecnologia')
Category.create(name: 'Historia')
Category.create(name: 'Deporte')
Category.create(name: 'Moda')
Book.create(name: 'Ruby' , category_id: 1)
Book.create(name: 'Php' , category_id: 1)
Book.create(name: 'El mundo' , category_id: 2)
Image.create(user_id: 1, image_file_name: 'user.png', image_content_type: 'image/png', image_file_size: 10, image_updated_at: '01/01/2017')
