describe 'Index Page', type: :feature do
  it 'displays project list' do
    visit '/'

    expect(page).to have_css '.projects'
    within '.projects' do
      expect(page).to have_content 'ATM'
      expect(page).to have_content 'A replicated function of an ATM machine.'
    end
  end

  it 'displays my about me' do
    visit '/'

    expect(page).to have_css '.about'
  end
end
