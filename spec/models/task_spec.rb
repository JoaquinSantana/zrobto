require 'spec_helper'

describe Task do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:description) }
  it { should validate_presence_of(:link) }
  it { should allow_value(URI::regexp(%w(http https))).for(:link) }
  it { should_not allow_value('abc.com').for(:link) }
  it { should ensure_length_of(:description).is_at_most(240) }
end
