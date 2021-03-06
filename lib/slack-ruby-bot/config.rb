module SlackRubyBot
  module Config
    extend self

    attr_accessor :token
    attr_accessor :url
    attr_accessor :aliases
    attr_accessor :user
    attr_accessor :user_id
    attr_accessor :team
    attr_accessor :team_id
    attr_accessor :allow_message_loops

    def names
      [user, aliases, "<@#{user_id.downcase}>", "<@#{user_id.downcase}>:", "#{user}:"].compact.flatten
    end

    def name?(name)
      name && names.include?(name.downcase)
    end
  end
end
