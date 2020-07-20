require_relative '../lib/user'

RSpec.describe "Création d'un utilisateur" do
  it 'test de l\'email' do
    expect(User.new("email@gmail.com", 100).email).to eq "email@gmail.com"
  end

  it "test de l'age" do
    expect(User.new("email@gmail.com", 100).age).to eq 100
  end

end
