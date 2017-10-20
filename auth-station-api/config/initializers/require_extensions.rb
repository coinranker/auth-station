#kmvc 밑에 있는 모든 library들을 한번에 require하는 방법.
Dir["#{Rails.root}/lib/auth/numeric_*"].each(&method(:require))
require 'auth/active_record_extension'
