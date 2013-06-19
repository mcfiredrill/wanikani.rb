require 'spec_helper'
require 'wanikani'

describe WaniKani do
  before :all do
    @w = WaniKani.new "68eba5773589a3d132c06f77706f647f"
  end
  it "gets the user information" do
    canned_resp = File.read "spec/fixtures/user_info.json"
    stub_request(:get, "http://www.wanikani.com/api/user/68eba5773589a3d132c06f77706f647f/user-information").to_return(body: canned_resp)
    @w.user_information.should == JSON.load(canned_resp)["user_information"]
  end
  it "gets the study queue" do
    canned_resp = File.read "spec/fixtures/study_queue.json"
    stub_request(:get, "http://www.wanikani.com/api/user/68eba5773589a3d132c06f77706f647f/study-queue").to_return(body: canned_resp)
    @w.study_queue.should == JSON.load(canned_resp)["requested_information"]
  end
  it "gets the level progression" do
    canned_resp = File.read "spec/fixtures/level_progression.json"
    stub_request(:get, "http://www.wanikani.com/api/user/68eba5773589a3d132c06f77706f647f/level-progression").to_return(body: canned_resp)
    @w.level_progression.should == JSON.load(canned_resp)["requested_information"]
  end
  it "gets the srs distribution" do
    canned_resp = File.read "spec/fixtures/srs_distribution.json"
    stub_request(:get, "http://www.wanikani.com/api/user/68eba5773589a3d132c06f77706f647f/srs-distribution").to_return(body: canned_resp)
    @w.srs_distribution.should == JSON.load(canned_resp)["requested_information"]
  end
  it "gets the recent unlocks with a default limit of ten" do
    canned_resp = File.read "spec/fixtures/recent-unlocks.json"
    stub_request(:get, "http://www.wanikani.com/api/user/68eba5773589a3d132c06f77706f647f/recent-unlocks/10").to_return(body: canned_resp)
    @w.recent_unlocks.should == JSON.load(canned_resp)["requested_information"]
  end
  it "lets you set a limit for recent unlocks" do
    canned_resp = File.read "spec/fixtures/recent-unlocks-with-limit.json"
    stub_request(:get, "http://www.wanikani.com/api/user/68eba5773589a3d132c06f77706f647f/recent-unlocks/3").to_return(body: canned_resp)
    @w.recent_unlocks(3).should == JSON.load(canned_resp)["requested_information"]
  end
  it "gets the critical items list with a default percentage of 75" do
    canned_resp = File.read "spec/fixtures/critical-items.json"
    stub_request(:get, "http://www.wanikani.com/api/user/68eba5773589a3d132c06f77706f647f/critical-items/75").to_return(body: canned_resp)
    @w.critical_items.should == JSON.load(canned_resp)["requested_information"]
  end
  it "gets the critial items list and lets you set a percentage" do
    canned_resp = File.read "spec/fixtures/critical-items-set-percentage.json"
    stub_request(:get, "http://www.wanikani.com/api/user/68eba5773589a3d132c06f77706f647f/critical-items/95").to_return(body: canned_resp)
    @w.critical_items(95).should == JSON.load(canned_resp)["requested_information"]
  end
  it "gets a full list of users radicals" do
    canned_resp = File.read "spec/fixtures/radicals.json"
    stub_request(:get, "http://www.wanikani.com/api/user/68eba5773589a3d132c06f77706f647f/radicals/").to_return(body: canned_resp)
    @w.radicals.should == JSON.load(canned_resp)["requested_information"]
  end
  it "gets a list of radicals specified by level" do
    canned_resp = File.read "spec/fixtures/radicals-level.json"
    stub_request(:get, "http://www.wanikani.com/api/user/68eba5773589a3d132c06f77706f647f/radicals/1").to_return(body: canned_resp)
    @w.radicals(1).should == JSON.load(canned_resp)["requested_information"]
  end
  it "gets a list of radicals specified by multiple levels" do
    canned_resp = File.read "spec/fixtures/radicals-multiple-levels.json"
    stub_request(:get, "http://www.wanikani.com/api/user/68eba5773589a3d132c06f77706f647f/radicals/1,2").to_return(body: canned_resp)
    @w.radicals([1,2]).should == JSON.load(canned_resp)["requested_information"]
  end
  it "gets a full list of users kanji" do
    canned_resp = File.read "spec/fixtures/kanji.json"
    stub_request(:get, "http://www.wanikani.com/api/user/68eba5773589a3d132c06f77706f647f/kanji/").to_return(body: canned_resp)
    @w.kanji.should == JSON.load(canned_resp)["requested_information"]
  end
  it "gets a list of kanji specified by level" do
    canned_resp = File.read "spec/fixtures/kanji-level.json"
    stub_request(:get, "http://www.wanikani.com/api/user/68eba5773589a3d132c06f77706f647f/kanji/1").to_return(body: canned_resp)
    @w.kanji(1).should == JSON.load(canned_resp)["requested_information"]
  end
  it "gets a list of kanji specified by multiple levels" do
    canned_resp = File.read "spec/fixtures/kanji-multiple-levels.json"
    stub_request(:get, "http://www.wanikani.com/api/user/68eba5773589a3d132c06f77706f647f/kanji/1,2").to_return(body: canned_resp)
    @w.kanji([1,2]).should == JSON.load(canned_resp)["requested_information"]
  end
  it "gets a full list of users vocab" do
    canned_resp = File.read "spec/fixtures/vocabulary.json"
    stub_request(:get, "http://www.wanikani.com/api/user/68eba5773589a3d132c06f77706f647f/vocabulary/").to_return(body: canned_resp)
    @w.vocabulary.should == JSON.load(canned_resp)["requested_information"]
  end
  it "gets a list of vocab specified by level" do
    canned_resp = File.read "spec/fixtures/vocabulary-level.json"
    stub_request(:get, "http://www.wanikani.com/api/user/68eba5773589a3d132c06f77706f647f/vocabulary/1").to_return(body: canned_resp)
    @w.vocabulary(1).should == JSON.load(canned_resp)["requested_information"]
  end
  it "gets a list of vocab specified by multiple levels" do
    canned_resp = File.read "spec/fixtures/vocabulary-multiple-levels.json"
    stub_request(:get, "http://www.wanikani.com/api/user/68eba5773589a3d132c06f77706f647f/vocabulary/1,2").to_return(body: canned_resp)
    @w.vocabulary([1,2]).should == JSON.load(canned_resp)["requested_information"]
  end
end
