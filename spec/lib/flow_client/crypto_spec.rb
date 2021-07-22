RSpec.describe FlowClient::Transaction do
  let(:key) {
    FlowClient::Crypto.key_from_hex_keys(
      '81c9655ca2affbd3421c90a1294260b62f1fd4e9aaeb70da4b9185ebb4f4a26b',
      '041c3e4980f2e7d733a7b023b6f9b9f5c0ff8116869492fd3b813597f9d17f826130c2e68fee90fc8beeabcb05c2bffa4997166ba5ab86942b03c8c86ab13e50d8'
    )
  }
  it "imports a key a hex string key pair for prime256v1" do

    expect(key.private?).to eq(true)
  end

  it "imports a key a hex string key pair for prime256v1" do
    expect(key.private?).to eq(true)
  end

  it "correctly signs data" do
    data = "hello world!"
    sig = FlowClient::Crypto.sign(data, key)
  end
end