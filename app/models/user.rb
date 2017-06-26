class User < ApplicationRecord

  class << self
    def create_with_omniauth(auth)
      create! do |user|
        user.provider = auth['provider']
        user.uid = auth['uid']
        user.auth_token = auth.credentials.token
        if auth['info']
          user.name = auth['info']['name'] || auth['info']['nickname'] || ''
        end
      end
    end
  end
end
