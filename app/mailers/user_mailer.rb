class UserMailer < ApplicationMailer
	def new_book(user, book)
    @book = book
    mail(to: user.email, subject: 'Se ha publicado un nuevo libro!')
  end
end
