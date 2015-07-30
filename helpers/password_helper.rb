module Password_Helper

  def generate_salt_and_hash(password)

    hash = BCrypt::Engine.generate_salt
    salt = BCrypt::Engine.hash_secret(password, password_salt)

    secure_result = {
      :hash => hash,
      :salt => salt
    }

  end

end
