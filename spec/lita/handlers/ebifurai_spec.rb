require "spec_helper"

describe Lita::Handlers::Ebifurai, lita_handler: true do
  it { is_expected.to route("ebifurai").to(:ebifurai)  }

  it 'return some text when get keyword' do
    send_message('ebifurai')

    expect(replies.last.to_s.length).not_to eq 0
  end
end
