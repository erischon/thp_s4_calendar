require_relative '../lib/event'

RSpec.describe "Création d'un event" do
  
  it 'test du time' do
    expect(Event.new("2020-07-20 15:24", 30, "Un evenement", ["admin@email.com"]).start_date.class).to eq Time
  end

  it 'test du duration' do
    expect(Event.new("2020-07-20 15:24", 30, "Un evenement", ["admin@email.com"]).duration.class).to eq Integer
    expect(Event.new("2020-07-20 15:24", 30, "Un evenement", ["admin@email.com"]).duration).to eq 30
  end

  it 'test du title' do
    expect(Event.new("2020-07-20 15:24", 30, "Un evenement", ["admin@email.com"]).title.class).to eq String
    expect(Event.new("2020-07-20 15:24", 30, "Un evenement", ["admin@email.com"]).title).to eq "Un evenement"
  end

  it 'test du attendees' do
    expect(Event.new("2020-07-20 15:24", 30, "Un evenement", ["admin@email.com"]).attendees.class).to eq Array
    expect(Event.new("2020-07-20 15:24", 30, "Un evenement", ["admin@email.com"]).attendees.length).to eq 1
  end
  
end
