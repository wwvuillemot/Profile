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
  # it 'should return companies for amazon tote' do
  #   companies = Company.amazon_tote
  #   expect(companies).not_to be_empty
  # end
  # it 'should return companies for seattle astro' do
  #   companies = Company.seattle_astro
  #   expect(companies).not_to be_empty
  # end
end
