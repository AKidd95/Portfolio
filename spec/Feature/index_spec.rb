require 'index.html.haml'

it 'displays project list' do
    visit '/'

    expect(page).to have_css '.projects'
    within '.projects' do
      expect(page).to have_content 'My First Website'
    end
  end
