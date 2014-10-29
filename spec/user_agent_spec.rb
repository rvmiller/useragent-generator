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

  it "-> gets a user agent for a samsung Galaxy" do
    user_agent = UserAgent.generate(os_type: :android,
                                    device: :samsung,
                                    model: 'Galaxy')
    expect(user_agent).to eq("Mozilla/5.0 (Linux; U; Android 2.0; en-us; GT-I7500 Build/ESD20) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30")
  end

  it "-> gets a user agent for a samsung Galaxy S" do
    user_agent = UserAgent.generate(os_type: :android,
                                    device: :samsung,
                                    model: 'Galaxy S')
    expect(user_agent).to eq("Mozilla/5.0 (Linux; U; Android 2.0; en-us; GT-I9000 Build/ESD20) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30")
  end

  it "-> gets a user agent for a samsung Galaxy S2" do
    user_agent = UserAgent.generate(os_type: :android,
                                    device: :samsung,
                                    model: 'Galaxy S2')
    expect(user_agent).to eq("Mozilla/5.0 (Linux; U; Android 4.0; en-us; SGH-I757M Build/ITL41F) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30")
  end

  it "-> gets a user agent for a samsung Galaxy SII" do
    user_agent = UserAgent.generate(os_type: :android,
                                    device: :samsung,
                                    model: 'Galaxy SII')
    expect(user_agent).to eq("Mozilla/5.0 (Linux; U; Android 4.0; en-us; SGH-I757M Build/ITL41F) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30")
  end

  it "-> gets a user agent for a samsung Galaxy S3" do
    user_agent = UserAgent.generate(os_type: :android,
                                    device: :samsung,
                                    model: 'Galaxy S3')
    expect(user_agent).to eq("Mozilla/5.0 (Linux; U; Android 4.0; en-us; SCH-I535 Build/ITL41F) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30")
  end

  it "-> gets a user agent for a samsung Galaxy SIII" do
    user_agent = UserAgent.generate(os_type: :android,
                                    device: :samsung,
                                    model: 'Galaxy SIII')
    expect(user_agent).to eq("Mozilla/5.0 (Linux; U; Android 4.0; en-us; SCH-I535 Build/ITL41F) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30")
  end

  it "-> gets a user agent for a samsung Galaxy S3 GT" do
    user_agent = UserAgent.generate(os_type: :android,
                                    device: :samsung,
                                    model: 'Galaxy S3 GT',
                                    language: 'de-de',
                                    os_version: '2.2.1')
    expect(user_agent).to eq("Mozilla/5.0 (Linux; U; Android 2.2.1; de-de; SAMSUNG-SGH-I747 Build/FRG83D) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30")
  end

  it "-> gets a user agent for a samsung Galaxy S4" do
    user_agent = UserAgent.generate(os_type: :android,
                                    device: :samsung,
                                    model: 'Galaxy S4')
    expect(user_agent).to eq("Mozilla/5.0 (Linux; U; Android 4.2.2; en-us; SAMSUNG GT-I9505 Build/JDQ39E) AppleWebKit/535.19 (KHTML, like Gecko) Version/1.0 Chrome/18.0.1025.308 Mobile Safari/535.19")
  end

  it "-> gets a user agent for a samsung Galaxy S5" do
    user_agent = UserAgent.generate(os_type: :android,
                                    device: :samsung,
                                    model: 'Galaxy S5')
    expect(user_agent).to eq("Mozilla/5.0 (Linux; U; Android 4.4.2; en-us; SAMSUNG SM-G900F Build/KVT49L) AppleWebKit/537.36 (KHTML, like Gecko) Version/1.6 Chrome/38.0.2125.102 Mobile")
  end

  it "-> gets a user agent for a samsung Galaxy Tab 3 7.0" do
    user_agent = UserAgent.generate(os_type: :android,
                                    device: :samsung,
                                    model: 'Galaxy Tab 3 7.0')
    expect(user_agent).to eq("Mozilla/5.0 (Linux; U; Android 4.1.2; en-us; SM-T210R Build/JZO54M) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30")
  end

  it "-> gets a user agent for a samsung Galaxy Note" do
    user_agent = UserAgent.generate(os_type: :android,
                                    device: :samsung,
                                    model: 'Galaxy Note')
    expect(user_agent).to eq("Mozilla/5.0 (Linux; U; Android 2.3; en-us; GT-I9220 Build/GRH55) AppleWebKit/533.1 (KHTML, like Gecko) Version/4.0 Mobile Safari/533.1")
  end

  it "-> gets a user agent for a samsung Galaxy Note 2" do
    user_agent = UserAgent.generate(os_type: :android,
                                    device: :samsung,
                                    model: 'Galaxy Note 2',
                                    language: 'en-ca',
                                    os_version: '4.4.1')
    expect(user_agent).to eq("Mozilla/5.0 (Linux; U; Android 4.4.1; en-ca; GT-N7100 Build/KOT49E) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30")
  end

  it "-> gets a user agent for a samsung Galaxy Round" do
    user_agent = UserAgent.generate(os_type: :android,
                                    device: :samsung,
                                    model: 'Galaxy Round',
                                    language: 'en-ca')
    expect(user_agent).to eq("Mozilla/5.0 (Linux; U; Android 4.3.1; en-ca; SAMSUNG SM-G910S Build/JLS36I) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/38.0.2125.102 Mobile Safari/537.36")
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

  it "-> gets a user agent for an HTC Sensation" do
    user_agent = UserAgent.generate(os_type: :android,
                                    device: :htc,
                                    model: 'Sensation',
                                    language: 'de-de',
                                    os_version: '2.2.1')
    expect(user_agent).to eq("Mozilla/5.0 (Linux; U; Android 2.2.1; de-de; Sensation_Z710e Build/FRG83D) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30")
  end

  it "-> gets a user agent for an HTC One X" do
    user_agent = UserAgent.generate(os_type: :android,
                                    device: :htc,
                                    model: 'One X')
    expect(user_agent).to eq("Mozilla/5.0 (Linux; U; Android 4.0.4; en-us; HTC_One_X Build/IMM76L) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30")
  end

  it "-> gets a user agent for an HTC Desire" do
    user_agent = UserAgent.generate(os_type: :android,
                                    device: :htc,
                                    model: 'Desire')
    expect(user_agent).to eq("Mozilla/5.0 (Linux; U; Android 2.3.4; en-us; HTC Desire Build/GRJ22) AppleWebKit/533.1 (KHTML, like Gecko) Version/4.0 Mobile Safari/533.1")
  end

  it "-> gets a user agent for an HTC Desire S" do
    user_agent = UserAgent.generate(os_type: :android,
                                    device: :htc,
                                    model: 'Desire S',
                                    language: 'en-gb',
                                    os_version: '4.1')
    expect(user_agent).to eq("Mozilla/5.0 (Linux; U; Android 4.1; en-gb; HTC_DesireS_S510e Build/JRO03S) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30")
  end

  it "-> gets a user agent for an HTC Desire X" do
    user_agent = UserAgent.generate(os_type: :android,
                                    device: :htc,
                                    model: 'Desire X')
    expect(user_agent).to eq("Mozilla/5.0 (Linux; U; Android 4.1.1; en-us; HTC Desire X Build/JRO03S) AppleWebKit/537.30 (KHTML, like Gecko) Version/4.0 Chrome/31.0.1650.59 Mobile Safari/537.36")
  end

  it "-> gets a user agent for an HTC Desire Z" do
    user_agent = UserAgent.generate(os_type: :android,
                                    device: :htc,
                                    model: 'Desire Z',
                                    language: 'nl-nl',
                                    os_version: '2.3.3')
    expect(user_agent).to eq("Mozilla/5.0 (Linux; U; Android 2.3.3; nl-nl; HTC_DesireZ_A7272 Build/GRI54) AppleWebKit/533.1 (KHTML, like Gecko) Version/4.0 Mobile Safari/533.1")
  end

  it "-> gets a user agent for an HTC EVO" do
    user_agent = UserAgent.generate(os_type: :android,
                                    device: :htc,
                                    model: 'EVO')
    expect(user_agent).to eq("Mozilla/5.0 (Linux; U; Android 4.1.1; en-us; EVO Build/JRO03S) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30")
  end

  it "-> gets a user agent for an HTC EVO 3D" do
    user_agent = UserAgent.generate(os_type: :android,
                                    device: :htc,
                                    model: 'EVO 3D',
                                    os_version: '4.0.3')
    expect(user_agent).to eq("Mozilla/5.0 (Linux; U; Android 4.0.3; en-us; Sprint APX515CKT Build/IML77) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30")
  end

  it "-> gets a user agent for an HTC Droid Incredible" do
    user_agent = UserAgent.generate(os_type: :android,
                                    device: :htc,
                                    model: 'Droid Incredible')
    expect(user_agent).to eq("Mozilla/5.0 (Linux; U; Android 2.3.4; en-us; ADR6300 Build/GRJ22) AppleWebKit/533.1 (KHTML, like Gecko) Version/4.0 Mobile Safari/533.1")
  end

  it "-> gets a user agent for an HTC Droid Eris" do
    user_agent = UserAgent.generate(os_type: :android,
                                    device: :htc,
                                    model: 'Droid Eris')
    expect(user_agent).to eq("Mozilla/5.0 (Linux; U; Android 4.0.1; en-us; ADR6200 Build/ITL41F) AppleWebKit/528.5 (KHTML, like Gecko) Version/3.1.2 Mobile Safari/528.5")
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

  it "-> gets a user agent for LG Optimus V" do
    user_agent = UserAgent.generate(os_type: :android,
                                    device: :lg,
                                    model: 'Optimus V')
    expect(user_agent).to eq("Mozilla/5.0 (Linux; U; Android 2.2.2; en-us; VM670 Build/FRG83G) AppleWebKit/533.1 (KHTML, like Gecko) Version/4.0 Mobile")
  end

  it "-> gets a user agent for LG U900" do
    user_agent = UserAgent.generate(os_type: :android,
                                    device: :lg,
                                    model: 'U900')
    expect(user_agent).to eq("Mozilla/5.0 (Linux; U; Android 2.2.2; en-us; VS910 4G Build/FRG83G) AppleWebKit/533.1 (KHTML, like Gecko) Version/4.0 Mobile Safari/533.1")
  end

  it "-> gets a user agent for LG Revolution" do
    user_agent = UserAgent.generate(os_type: :android,
                                    device: :lg,
                                    model: 'Revolution')
    expect(user_agent).to eq("Mozilla/5.0 (Linux; U; Android 2.2.2; en-us; VS910 4G Build/FRG83G) AppleWebKit/533.1 (KHTML, like Gecko) Version/4.0 Mobile Safari/533.1")
  end

  it "-> gets a user agent for LG Optimus" do
    user_agent = UserAgent.generate(os_type: :android,
                                    device: :lg,
                                    model: 'Optimus')
    expect(user_agent).to eq("Mozilla/5.0 (Linux; U; Android 2.2.1; en-us; LG-MS690 Build/FRG83D) AppleWebKit/533.1 (KHTML, like Gecko) Version/4.0 Mobile Safari/533.1")
  end

  it "-> gets a user agent for LG Optimus L9" do
    user_agent = UserAgent.generate(os_type: :android,
                                    device: :lg,
                                    model: 'Optimus L9')
    expect(user_agent).to eq("Mozilla/5.0 (Linux; U; Android 4.0.1; en-us; LG-P768 Build/ITL41F) AppleWebKit/535.19 (KHTML, like Gecko) Version/4.0 Mobile Safari/535.19")
  end

  it "-> gets a user agent for LG G2" do
    user_agent = UserAgent.generate(os_type: :android,
                                    device: :lg,
                                    model: 'G2')
    expect(user_agent).to eq("Mozilla/5.0 (Linux; U; Android 4.2.1; en-us; LG-D802 Build/JOP40G) AppleWebKit/537.16 (KHTML, like Gecko) Version/4.0 Mobile Safari/537.16")
  end

  it "-> gets a user agent for LG Vista" do
    user_agent = UserAgent.generate(os_type: :android,
                                    device: :lg,
                                    model: 'Vista')
    expect(user_agent).to eq("Mozilla/5.0 (Linux; U; Android 4.4.1; en-us; LG-D631/D63108g Build/KOT49E) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Mobile Safari/537.36")
  end

  it "-> gets a user agent for LG G Flex" do
    user_agent = UserAgent.generate(os_type: :android,
                                    device: :lg,
                                    model: 'G Flex')
    expect(user_agent).to eq("Mozilla/5.0 (Linux; U; Android 4.2.2; en-us; LG-D950/D95008m Build/JDQ39E) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.2 Mobile Safari/537.36")
  end

  it "-> gets a user agent for LG Flex" do
    user_agent = UserAgent.generate(os_type: :android,
                                    device: :lg,
                                    model: 'Flex')
    expect(user_agent).to eq("Mozilla/5.0 (Linux; U; Android 4.2.2; en-us; LG-D950/D95008m Build/JDQ39E) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.2 Mobile Safari/537.36")
  end

  it "-> gets a user agent for an LG G3" do
    user_agent = UserAgent.generate(os_type: :android,
                                    device: :lg,
                                    model: 'Revolution',
                                    language: 'de-de',
                                    os_version: '2.2.1')
    expect(user_agent).to eq("Mozilla/5.0 (Linux; U; Android 2.2.1; de-de; VS910 4G Build/FRG83D) AppleWebKit/533.1 (KHTML, like Gecko) Version/4.0 Mobile Safari/533.1")
  end
end

describe "#motorola_user_agent_factory" do

  it "-> gets a default motorola user agent" do
    user_agent = UserAgent.generate(os_type: :android,
                                    device: :motorola)
    expect(user_agent).to eq("Mozilla/5.0 (Linux; U; Android 2.2.2; en-us; DROIDX Build/FRG83G) AppleWebKit/530.17 (KHTML, like Gecko) Version/4.0 Mobile Safari/530.17 480X854 motorola DROIDX")
  end

  it "-> gets a versioned default user agent for motorola" do
    user_agent = UserAgent.generate(os_type: :android,
                                    device: :motorola,
                                    os_version: '3.1')
    expect(user_agent).to eq("Mozilla/5.0 (Linux; U; Android 3.1; en-us; DROIDX Build/HMJ37) AppleWebKit/530.17 (KHTML, like Gecko) Version/4.0 Mobile Safari/530.17 480X854 motorola DROIDX")
  end

  it "-> gets a versioned default user agent for motorola with custom language" do
    user_agent = UserAgent.generate(os_type: :android,
                                    device: :motorola,
                                    os_version: '4.1.1',
                                    language: 'es-es')
    expect(user_agent).to eq("Mozilla/5.0 (Linux; U; Android 4.1.1; es-es; DROIDX Build/JRO03S) AppleWebKit/530.17 (KHTML, like Gecko) Version/4.0 Mobile Safari/530.17 480X854 motorola DROIDX")
  end

  it "-> gets a user agent for motorola Droid" do
    user_agent = UserAgent.generate(os_type: :android,
                                    device: :motorola,
                                    model: 'Droid')
    expect(user_agent).to eq("Mozilla/5.0 (Linux; U; Android 2.1; en-us; Droid Build/EPF21B) AppleWebKit/530.17 (KHTML, like Gecko) Version/4.0 Mobile Safari/530.17")
  end

  it "-> gets a user agent for motorola Droid 2" do
    user_agent = UserAgent.generate(os_type: :android,
                                    device: :motorola,
                                    model: 'Droid 2')
    expect(user_agent).to eq("Mozilla/5.0 (Linux; U; Android 2.2; en-us; DROID2 GLOBAL Build/FRG22D) AppleWebKit/533.1 (KHTML, like Gecko) Version/4.0 Mobile Safari/533.1")
  end

  it "-> gets a user agent for motorola Droid X" do
    user_agent = UserAgent.generate(os_type: :android,
                                    device: :motorola,
                                    model: 'Droid X')
    expect(user_agent).to eq("Mozilla/5.0 (Linux; U; Android 2.1; en-us; DROIDX Build/EPF21B) AppleWebKit/530.17 (KHTML, like Gecko) Version/4.0 Mobile Safari/530.17 480X854 motorola DROIDX")
  end

  it "-> gets a user agent for motorola Milestone" do
    user_agent = UserAgent.generate(os_type: :android,
                                    device: :motorola,
                                    model: 'Milestone')
    expect(user_agent).to eq("Mozilla/5.0 (Linux; U; Android 3.0; en-us; Milestone Build/HRI39) AppleWebKit/533.1 (KHTML, like Gecko) Version/4.0 Mobile Safari/533.1")
  end

  it "-> gets a user agent for motorola Xoom" do
    user_agent = UserAgent.generate(os_type: :android,
                                    device: :motorola,
                                    model: 'Xoom')
    expect(user_agent).to eq("Mozilla/5.0 (Linux; U; Android 3.0; en-us; Xoom Build/HRI39) AppleWebKit/534.13 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.13")
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