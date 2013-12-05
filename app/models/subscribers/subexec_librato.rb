module Subscribers
  class SubexecLibrato < Base

    def process
      sub   = event.payload[:sub]
      dur   = event.duration
      type  = sub.command.split.first
      host  = event.payload[:hostname]
      time  = Time.current
      Librato::Metrics.submit 'subexec.hosts' => {measure_time: time, value: dur, source: host}
      Librato::Metrics.submit 'subexec.types' => {measure_time: time, value: dur, source: type}
    end

  end
end
