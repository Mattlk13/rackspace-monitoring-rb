module Fog
  module Monitoring
    class Rackspace
      class Real

        def evaluate_alarm_example(id, options = {})
          data = {:values => options.dup}
          request(
            :body     => MultiJson.encode(data),
            :expects  => [200],
            :method   => 'POST',
            :path     => "alarm_examples/#{id}"
          )
        end
      end
    end
  end
end

