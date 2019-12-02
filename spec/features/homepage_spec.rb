feature 'Visiting Homepage' do
  scenario 'user should be bale to visit the homepage' do
    visit('/homepage')
    expect(page).to have_content "Chitter-let have some chitchat"
  end
end
