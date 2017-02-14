class BookController < ApplicationController

  before_action :set_book, only: [:show, :edit, :destroy]

  def index
    @books = Book.all
  end

  def new
    @categories = Category.all
  end

  def create
    book = Book.new
    book.name = params['name']
    book.category_id = params['category']
    book.save
    if book.save
      flash[:success] = 'Book Create!'
      redirect_to book_index_path
    else
      render 'new'
    end
  end

  def edit
    @categories = Category.all
  end

  def update
    book = Book.find(params[:id])
    if book.update(
       name:params[:name],
       category_id:params[:category]
    )
      flash[:success] = 'Book Update Correct!'
      redirect_to book_index_path
    end
  end

  def destroy
    if @book.destroy
      flash[:danger] = 'Book Delete!'
      redirect_to book_index_path
    else
      render 'index'
    end
  end

  private
  #book id
  def set_book
    @book = Book.find(params[:id])
  end
end
