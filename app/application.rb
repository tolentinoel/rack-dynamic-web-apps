class Application

  def call(env)
  #   resp = Rack::Response.new

  #   num_1 = Kernel.rand(1..20)
  #   num_2 = Kernel.rand(1..20)
  #   num_3 = Kernel.rand(1..20)

  #   if num_1==num_2 && num_2==num_3
  #     resp.write "You Win"
  #   else
  #     resp.write "You Lose"
  #   end

  #   resp.finish
  # end

  resp = Rack::Response.new

    num_1 = Kernel.rand(1..20)
    num_2 = Kernel.rand(1..20)
    num_3 = Kernel.rand(1..20)

    # the .write method is a rack method. using this instead of puts statement
    resp.write "#{num_1}\n"
    resp.write "#{num_2}\n"
    resp.write "#{num_3}\n"

    #conditional statement to draw random number from the range/variables above. \n is another line
    if num_1==num_2 && num_2==num_3
      resp.write "You Win"
    else
      resp.write "You Lose"
    end

    resp.finish
  end


end