require 'rails_helper'

RSpec.describe User, type: :model do
  it 'is valid with valid parameters' do
    @user = User.new(
      password: 'password',
      password_confirmation: 'password',
      first_name: 'x',
      last_name: 'y',
      email: 'xy@gmail.com'
    
    )
    @user.save
    expect(@user.id).to be_present
  end

  it 'is  invalid when password does not exist' do
    @user = User.new(
      password_confirmation: 'password',
      first_name: 'x',
      last_name: 'y',
      email: 'xy@gmail.com'
    
    )

    expect(@user).to be_invalid
    puts @user.errors.full_messages
  end

  it 'is  invalid when first_name does not exist' do
    @user = User.new(
      password: 'password',
      password_confirmation: 'password',
      last_name: 'y',
      email: 'xy@gmail.com'
    
    )

    expect(@user).to be_invalid
    puts @user.errors.full_messages
  end

  it 'is  invalid when last_name does not exist' do
    @user = User.new(
      password: 'password',
      password_confirmation: 'password',
      first_name: 'x',
      email: 'xy@gmail.com'
    
    )

    expect(@user).to be_invalid
    puts @user.errors.full_messages
  end

  it 'is  invalid when password_confirmation does not exist' do
    @user = User.new(
      password: 'password',
      last_name: 'y',
      first_name: 'x',
      email: 'xy@gmail.com'
    
    )

    expect(@user).to be_invalid
    puts @user.errors.full_messages
  end




end