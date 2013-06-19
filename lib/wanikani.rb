require 'httparty'
require 'json'

class WaniKani
  BASE_URL = "http://www.wanikani.com/api/user"
  def initialize user_id
    @user_id = user_id 
  end

  def user_information
    url = "#{BASE_URL}/#{@user_id}/user-information"
    JSON.load(HTTParty.get(url).body)["user_information"]
  end

  def study_queue
    url = "#{BASE_URL}/#{@user_id}/study-queue"
    JSON.load(HTTParty.get(url).body)["requested_information"]
  end

  def level_progression
    url = "#{BASE_URL}/#{@user_id}/level-progression"
    JSON.load(HTTParty.get(url).body)["requested_information"]
  end

  def srs_distribution
    url = "#{BASE_URL}/#{@user_id}/srs-distribution"
    JSON.load(HTTParty.get(url).body)["requested_information"]
  end

  def recent_unlocks limit=10
    url = "#{BASE_URL}/#{@user_id}/recent-unlocks/#{limit}"
    JSON.load(HTTParty.get(url).body)["requested_information"]
  end

  def critical_items percentage=75
    url = "#{BASE_URL}/#{@user_id}/critical-items/#{percentage}"
    JSON.load(HTTParty.get(url).body)["requested_information"]
  end

  def radicals levels=''
    url = "#{BASE_URL}/#{@user_id}/radicals/#{levels.to_s.gsub(/\[|\]|\s/,'')}"
    JSON.load(HTTParty.get(url).body)["requested_information"]
  end
  
  def kanji levels=''
    url = "#{BASE_URL}/#{@user_id}/kanji/#{levels.to_s.gsub(/\[|\]|\s/,'')}"
    JSON.load(HTTParty.get(url).body)["requested_information"]
  end

  def vocabulary levels=''
    url = "#{BASE_URL}/#{@user_id}/vocabulary/#{levels.to_s.gsub(/\[|\]|\s/,'')}"
    JSON.load(HTTParty.get(url).body)["requested_information"]
  end
end
