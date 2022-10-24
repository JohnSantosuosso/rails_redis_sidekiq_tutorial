class HelloWorldJob < ApplicationJob
  queue_as :default

  def perform(*args)
    #Simulate a long, time-consuming task
    sleep 5
    #Will display current time, milliseconds included
    p "Hello from HelloWorldJob #{Time.now().strftime('%F - %H:%M:%S.%L')}"
  end
end