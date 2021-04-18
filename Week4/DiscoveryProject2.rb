Accounts = {"10001" => "AFord", "20001" => "JAlex", "30001" => "AJolie"}
Accounts.delete("30001")
puts Accounts.inspect

puts Accounts.invert.inspect

puts Accounts.has_key?("JAlex").inspect


puts Accounts.size().inspect


puts Accounts.clear.inspect