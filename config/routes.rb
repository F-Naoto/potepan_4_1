Rails.application.routes.draw do
root "schedules#index"
resources :schedules

# enum full_day: { A: 0, B: 1}
end