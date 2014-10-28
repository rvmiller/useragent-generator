require 'rspec'
require_relative 'spec_helper'

describe "#default user_agent_factory" do

  it "-> gets a default android user agent with sensible defaults" do
    user_agent = UserAgent.generate(os_type: :android)
    expect(user_agent).to eq("Mozilla/5.0 (Linux; U; Android 2.2.2; en-us; SCH-I535 Build/FRG83G) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30")
  end

  it "-> gets default ios user agent with sensible defaults" do
    user_agent = UserAgent.generate(os_type: :ios)
    expect(user_agent).to eq("Apple-iPhone5C2/1001.401")
  end

  it "-> gets a default blackberry user agent" do
    user_agent = UserAgent.generate(os_type: :blackberry)
    expect(user_agent).to eq("Mozilla/5.0 (BlackBerry; U; BlackBerry 9700; en-us) AppleWebKit/534.8+ (KHTML, like Gecko) Version/6.0.0.448 Mobile Safari/534.8+")
  end

  it "-> gets a default htc user agent" do
    user_agent = UserAgent.generate(os_type: :android, device: :htc)
    expect(user_agent).to eq("Mozilla/5.0 (Linux; U; Android 2.3.4; en-us; ADR6300 Build/GRJ22) AppleWebKit/533.1 (KHTML, like Gecko) Version/4.0 Mobile Safari/533.1")
  end

  it "-> gets a default lg user agent" do
    user_agent = UserAgent.generate(os_type: :android, device: :lg)
    expect(user_agent).to eq("Mozilla/5.0 (Linux; U; Android 2.2.2; en-us; LG-D855 Build/FRG83G) AppleWebKit/537.16 (KHTML, like Gecko) Version/4.0 Mobile")
  end

  it "-> gets a specific htc user agent" do
    user_agent = UserAgent.generate(os_type: :android, device: :htc, model: 'Sensation', language: 'de-de', os_version: '4.0.3')
    expect(user_agent).to eq("Mozilla/5.0 (Linux; U; Android 4.0.3; de-de; Sensation_Z710e Build/IML77) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30")
  end

  it "-> gets default ios user agent with custom version" do
    user_agent = UserAgent.generate(os_type: :ios, os_version: '6.1')
    expect(user_agent).to eq("Apple-iPhone5C2/1002.141")
  end

  it "-> gets default iphone user agent" do
    user_agent = UserAgent.generate(os_type: :ios, device: :iphone)
    expect(user_agent).to eq("Apple-iPhone5C2/1001.401")
  end

  it "-> gets a default ipad user agent" do
    user_agent = UserAgent.generate(os_type: :ios, device: :ipad)
    expect(user_agent).to eq("Apple-iPad2C1/806.191")
  end

  it "-> gets a default ipod user agent" do
    user_agent = UserAgent.generate(os_type: :ios, device: :ipod)
    expect(user_agent).to eq("Apple-iPod4C1/801.293")
  end

end

describe "#samsung_user_agent_factory" do

  it "-> gets a default samsung user agent" do
    user_agent = UserAgent.generate(os_type: :android,
                                    device: :samsung)
    expect(user_agent).to eq("Mozilla/5.0 (Linux; U; Android 2.2.2; en-us; SCH-I535 Build/FRG83G) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30")
  end

  it "-> gets a versioned default user agent for samsung" do
    user_agent = UserAgent.generate(os_type: :android,
                                    device: :samsung,
                                    os_version: '3.1')
    expect(user_agent).to eq("Mozilla/5.0 (Linux; U; Android 3.1; en-us; SCH-I535 Build/HMJ37) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30")
  end

  it "-> gets a versioned default user agent for samsung with custom language" do
    user_agent = UserAgent.generate(os_type: :android,
                                    device: :samsung,
                                    os_version: '3.1',
                                    language: 'es-es')
    expect(user_agent).to eq("Mozilla/5.0 (Linux; U; Android 3.1; es-es; SCH-I535 Build/HMJ37) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30")
  end

  it "-> gets a user agent string for a samsung S3 GT" do
    user_agent = UserAgent.generate(os_type: :android,
                                    device: :samsung,
                                    model: 'Galaxy S3 GT',
                                    language: 'de-de',
                                    os_version: '2.2.1')
    expect(user_agent).to eq("Mozilla/5.0 (Linux; U; Android 2.2.1; de-de; SAMSUNG-SGH-I747 Build/FRG83D) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30")
  end
end

describe "#htc_user_agent_factory" do

  it "-> gets a default htc user agent" do
    user_agent = UserAgent.generate(os_type: :android,
                                    device: :htc)
    expect(user_agent).to eq("Mozilla/5.0 (Linux; U; Android 2.3.4; en-us; ADR6300 Build/GRJ22) AppleWebKit/533.1 (KHTML, like Gecko) Version/4.0 Mobile Safari/533.1")
  end

  it "-> gets a versioned default user agent for htc" do
    user_agent = UserAgent.generate(os_type: :android,
                                    device: :htc,
                                    os_version: '3.1')
    expect(user_agent).to eq("Mozilla/5.0 (Linux; U; Android 3.1; en-us; ADR6300 Build/HMJ37) AppleWebKit/533.1 (KHTML, like Gecko) Version/4.0 Mobile Safari/533.1")
  end

  it "-> gets a versioned default user agent for htc with custom language" do
    user_agent = UserAgent.generate(os_type: :android,
                                    device: :htc,
                                    os_version: '4.1.1',
                                    language: 'es-es')
    expect(user_agent).to eq("Mozilla/5.0 (Linux; U; Android 4.1.1; es-es; ADR6300 Build/JRO03S) AppleWebKit/533.1 (KHTML, like Gecko) Version/4.0 Mobile Safari/533.1")
  end

  it "-> gets a user agent string for a HTC Sensation" do
    user_agent = UserAgent.generate(os_type: :android,
                                    device: :htc,
                                    model: 'Sensation',
                                    language: 'de-de',
                                    os_version: '2.2.1')
    expect(user_agent).to eq("Mozilla/5.0 (Linux; U; Android 2.2.1; de-de; Sensation_Z710e Build/FRG83D) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30")
  end
end

describe "#lg_user_agent_factory" do

  it "-> gets a default lg user agent" do
    user_agent = UserAgent.generate(os_type: :android,
                                    device: :lg)
    expect(user_agent).to eq("Mozilla/5.0 (Linux; U; Android 2.2.2; en-us; LG-D855 Build/FRG83G) AppleWebKit/537.16 (KHTML, like Gecko) Version/4.0 Mobile")
  end

  it "-> gets a versioned default user agent for lg" do
    user_agent = UserAgent.generate(os_type: :android,
                                    device: :lg,
                                    os_version: '3.1')
    expect(user_agent).to eq("Mozilla/5.0 (Linux; U; Android 3.1; en-us; LG-D855 Build/HMJ37) AppleWebKit/537.16 (KHTML, like Gecko) Version/4.0 Mobile")
  end

  it "-> gets a versioned default user agent for lg with custom language" do
    user_agent = UserAgent.generate(os_type: :android,
                                    device: :lg,
                                    os_version: '4.1.1',
                                    language: 'es-es')
    expect(user_agent).to eq("Mozilla/5.0 (Linux; U; Android 4.1.1; es-es; LG-D855 Build/JRO03S) AppleWebKit/537.16 (KHTML, like Gecko) Version/4.0 Mobile")
  end

  it "-> gets a user agent string for an LG G3" do
    user_agent = UserAgent.generate(os_type: :android,
                                    device: :lg,
                                    model: 'Revolution',
                                    language: 'de-de',
                                    os_version: '2.2.1')
    expect(user_agent).to eq("Mozilla/5.0 (Linux; U; Android 2.2.1; de-de; VS910 4G Build/VS910ZV6) AppleWebKit/533.1 (KHTML, like Gecko) Version/4.0 Mobile Safari/533.1")
  end
end

describe "#iphone_user_agent_factory" do

  it "-> gets a default iphone user agent" do
    user_agent = UserAgent.generate(os_type: :ios,
                                    device: :iphone)
    expect(user_agent).to eq("Apple-iPhone5C2/1001.401")
  end

  it "-> gets a versioned default user agent for iphone" do
    user_agent = UserAgent.generate(os_type: :ios,
                                    device: :iphone,
                                    os_version: '5.0')
    expect(user_agent).to eq("Apple-iPhone5C2/901.334")
  end

  it "-> gets a versioned default user agent for iphone with custom language" do
    user_agent = UserAgent.generate(os_type: :ios,
                                    device: :iphone,
                                    os_version: '5.1.1',
                                    language: 'es-es')
    expect(user_agent).to eq("Apple-iPhone5C2/902.206")
  end

  it "-> gets a user agent string for an iphone 4S" do
    user_agent = UserAgent.generate(os_type: :ios,
                                    device: :iphone,
                                    model: 'iPhone 4S',
                                    language: 'de-de',
                                    os_version: '4.2.5')
    expect(user_agent).to eq("Apple-iPhone4C1/805.128")
  end
end