require_relative '../lib/app'

describe "the perform method" do
  it "should return the Hash class" do
    expect(perform.class).to eq(Hash)
  end

end

describe "the get_the_page method" do
  it "should return the Nokogiri::HTML::Document class" do
    expect(get_the_page.class).to eq(Nokogiri::HTML::Document)
  end

end

describe "the get_the_name method" do
  it "should return BTC as is first element" do
    expect(get_the_name(get_the_page)[0]).to eq("BTC")
  end

end

describe "the get_the_prices method" do
  it "should be the same size as get_the_name" do
    expect(get_the_prices(get_the_page).size).to eq(get_the_name(get_the_page).size)
  end

end