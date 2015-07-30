require 'spec_helper'

describe Lita::Handlers::OnewheelJira, lita_handler: true do
  it 'gives a jira link for !jira dddd' do
    send_command 'jira 1234'
    expect(replies.last).to eq('https://shopigniter.atlassian.net/browse/FL-1234')
  end

  it 'gives a jira link for !jira fldddd' do
    send_command 'jira fl1234'
    expect(replies.last).to eq('https://shopigniter.atlassian.net/browse/FL-1234')
  end

  it 'gives a jira link for !jira FLdddd' do
    send_command 'jira FL1234'
    expect(replies.last).to eq('https://shopigniter.atlassian.net/browse/FL-1234')
  end

  it 'gives a jira link for !jira fl-dddd' do
    send_command 'jira fl-1234'
    expect(replies.last).to eq('https://shopigniter.atlassian.net/browse/FL-1234')
  end
end
