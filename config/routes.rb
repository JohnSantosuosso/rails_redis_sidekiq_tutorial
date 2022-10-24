Rails.application.routes.draw do
  get "welcomeindex", to: "welcome#index"

  #route where any visitor require the helloWorldJob to be triggered
  post "welcome/trigger_job"

  #where visitors are redirected once job has been called
  get "other/job_done"

  root to: "welcome#index"
end
