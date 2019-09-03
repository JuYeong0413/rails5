class ApplicationRecord < ActiveRecord::Base
  # ActiveRecord 상속 : ActiveRecord에서 제공하는 기능들을 쉽게 가져다 쓸 수 있다.
  # ActiveRecord덕분에 Rails모델은 실제 데이터베이스의 값을 쉽게 읽고 쓸 수 있게 된다.
  self.abstract_class = true
end
