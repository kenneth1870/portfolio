# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :admin do
  end
  get 'home/download_pdf'
  root to: 'home#index'
end
