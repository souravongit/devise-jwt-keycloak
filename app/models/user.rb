class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :jwt_authenticatable,
         :registerable,
         jwt_revocation_strategy: JwtDenylist #:omniauthable, :omniauthable,omniauth_providers: %i[keycloakopenid]

  # def jwt_payload
  #   { 'email' => email }
  # end
end
