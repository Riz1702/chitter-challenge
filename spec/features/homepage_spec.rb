feature 'Visiting Homepage' do
  scenario 'user should be bale to visit the homepage' do
    visit('/homepage')
    expect(page).to have_content "Chitter - Let's have some Chit-Chat"
  end
end

feature 'Posting a message' do
  scenario 'user should be able to post a peep' do
    visit('/homepage')
    fill_in :msg, with: 'Hi, Nice weather in London today'
    click_button 'Submit'
  end
end
