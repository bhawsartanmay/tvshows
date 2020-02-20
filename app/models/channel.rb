class Channel < ApplicationRecord
  has_many :shows, :dependent => :destroy

  def self.channels_name
    ["Sony", "Colors", "Discovery", "Sabtv", "Zeetv", "Aajtak", "Indiatv"]
  end
  
  def self.random_time
    now = Time.now.to_i
    minute_ago = (Time.now - 60).to_i
    Time.at(rand(minute_ago..now))    
  end

  def self.random_show_name
    (0...8).map { (65 + rand(26)).chr }.join
  end
end
