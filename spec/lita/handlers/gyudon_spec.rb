require "spec_helper"

describe Lita::Handlers::Gyudon, lita_handler: true do
  it { is_expected.to route('gyudon') }
  it { is_expected.to route('gyudon').to(:gyudon) }
  it 'retrieve message "gyudon"' do
    gyudon_plz = "あ、チーズ牛丼中盛りツユダクで。"
    send_message('gyudon')
    expect(gyudon_plz).to include(replies.last)
  end
end
