describe '.all' do
  it 'returns a list of all the peeps atored in the database' do
    peeps = Peeps.all
    expect(peeps).to include "Hi, Nice weather in London today"
    expect(peeps).to include "Ah! really? Its freezing here in Melbourne"
    expect(peeps).to include "Well! its quite pleasant in Mumbai today!"
  end
end
