describe Slide do
  it 'should create a slide' do
    slide = Slide.new
    expect(slide).not_to eql nil
  end
  it 'should create a slide with hash' do
    attributes = {
      order: 1,
      path: 'path/to/slide/image.png',
      title: 'Slide Test',
      description: 'A bit more description',
      active: true
    }
    slide = Slide.create(attributes)
    expect(slide).not_to eql nil
    expect(slide.order).to eql attributes[:order]
    expect(slide.path).to eql attributes[:path]
    expect(slide.title).to eql attributes[:title]
    expect(slide.description).to eql attributes[:description]
    expect(slide.active).to eql attributes[:active]
  end
  it 'should return slides for amazon tote' do
    slides = Slide.find(:amazon)
    expect(slides).not_to be_empty
  end
  it 'should return slides for seattle astro' do
    slides = Slide.find(:seattle_astro)
    expect(slides).not_to be_empty
  end
  it 'should not return slides for azure' do
    slides = Slide.find(:azure)
    expect(slides).to be nil
  end
end
