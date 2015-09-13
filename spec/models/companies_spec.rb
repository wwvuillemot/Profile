describe Company do
  it 'should create a company' do
    company = Company.new
    expect(company).not_to eql nil
  end
  it 'should create a company with hash' do
    attributes = {
      slug: :slug_as_id,
      title: 'My Company Title',
      short: 'MCT'
    }
    company = Company.create(attributes)
    expect(company).not_to eql nil
    expect(company.slug).to eql attributes[:slug]
    expect(company.title).to eql attributes[:title]
    expect(company.short).to eql attributes[:short]
  end
  it 'should return companies' do
    companies = Company.find_all
    expect(companies).not_to be_empty
    companies.each do |slug, company|
      expect(company.slug).not_to be_empty
      expect(company.title).not_to be_empty
      expect(company.short).not_to be_empty
      expect(company.tags).not_to be_empty
    end
  end
  it 'should return seattle_astro' do
    seattle_astro = Company.find(:seattle_astro)
    expect(seattle_astro).not_to eql nil
    expect(seattle_astro.slides).not_to eql nil
  end
  it 'should return azure' do
    azure = Company.find(:azure)
    expect(azure).not_to eql nil
    expect(azure.slides).to eql nil
  end
end
