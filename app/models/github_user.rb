class GithubUser

  class << self
    def from_omniauth_blob auth_blob
      new auth_blob["uid"],
          auth_blob["info"]["nickname"],
          auth_blob["info"]["image"]
    end

    def from_session session_hash
      new session_hash["id"],
          session_hash["nickname"],
          session_hash["avatar"]
    end
  end

  attr_reader :id, :nickname, :avatar

  def initialize id, nickname, avatar
    @id = id
    @nickname = nickname
    @avatar = avatar
  end

  def signed_in?
    id.present?
  end
end
