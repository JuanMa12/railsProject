class User < ActiveRecord::Base


	validates 	:password_digest, presence: true, length: { minimum: 6 }, confirmation: true, allow_nil: true
	validates 	:name, presence: {message:'Add Name'}
	validates 	:email, presence: {message:'Add Email'}, uniqueness:{message:'Ya existe este correo'}

	has_secure_password


end