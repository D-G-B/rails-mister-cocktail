Rails.application.routes.draw do
  resources :cocktails, only: [ :index, :show, :new, :create ] do
    resources :doses, only: [ :new, :create ]
  end
    resources :doses, only: [ :destroy ]
end

=begin

For Cocktails :
A user can see the list of cocktails
GET "cocktails" #index

A user can see the details of a given cocktail, with the dose needed for each ingredient
GET "cocktails/42" #show

A user can create a new cocktail
GET "cocktails/new" #new
POST "cocktails" #create

For Doses:
> A user can add a new dose (ingredient/description pair) to an existing cocktail
> Checkout simple_form docs about f.association to easily create a select dropdown for our list of ingredients.

GET "cocktails/42/doses/new" 
POST "cocktails/42/doses"

> A user can delete a dose that belongs to an existing cocktail. How can we make a delete link again?

DELETE "doses/25"

=end