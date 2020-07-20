Rails.application.routes.draw do
get "ask", to: "questions#ask", as: :ask
get "answer", to: "questions#reply"
end
