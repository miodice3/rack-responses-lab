

class Application

    def call(env)
      resp = Rack::Response.new

      t = Time.now

      #puts t.day
      resp.write "#{t.day}\n"
      #puts t.month
      resp.write "#{t.month}\n"
      #puts t.hour
      resp.write "#{t.hour}\n"
      

      num_1 = Kernel.rand(1..20)
      num_2 = Kernel.rand(1..20)
      num_3 = Kernel.rand(1..20)
  
      resp.write "#{num_1}\n"
      resp.write "#{num_2}\n"
      resp.write "#{num_3}\n"
  
      if num_1==num_2 && num_2==num_3
        resp.write "You Win\n"
      else
        resp.write "You Lose\n"
      end
  
      if t.hour < 12
        resp.write "Good Morning!"
      else
        resp.write "Good Afternoon!"
      end

      resp.finish
    end
  
  end
  