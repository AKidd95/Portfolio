describe 'Index Page', type: :feature do
  it 'displays project list' do
    visit '/'

    expect(page).to have_css '.projects'
    within '.projects' do
      expect(page).to have_content 'My First Website'
      expect(page).to have_content 'FizzBuzz'
    end
  end
end

describe 'CV page', type: :feature do
  it 'displays contacts' do
    visit '/cv.html'

    expect(page).to have_css '.contact'
    within '.contact' do
      expect(page).to have_content 'Vivelvagen 25c, 125 33 Alvsjo'
      expect(page).to have_content 'Aiden.jubelin@gmail.com'
      expect(page).to have_content '+46 72-205 64 95'
    end
  end

  it 'displays education' do
    visit '/cv.html'

    expect(page).to have_css '.education'
    within '.education' do
      expect(page).to have_content 'Craft Academy Bootcamp'
      expect(page).to have_content '12 week full stack Web Development course.'
    end
  end
end
