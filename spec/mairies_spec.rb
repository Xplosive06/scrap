require_relative '../lib/mairies'

describe "get_cities_emails method" do
  it "should return the Array class" do
    expect(get_cities_emails(get_cities_names).class).to eq(Array)
  end

end

describe "the get_cities_names method" do
  it "should return the first element: ableiges" do
    expect(get_cities_names[0]).to eq("ableiges")
  end

end

describe "the perform method" do
  it "should return the Hash class" do
    expect(perform.class).to eq(Hash)
  end

end