require 'spec_helper'

describe Task do
	let(:user) { create(:user) }
	before do 
		@task = user.tasks.build(name: "nowe", description: "Nowe zadanie", link: "http://task.com", user_id: user.id)
	end

	subject { @task }

	it { should be_valid }

  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:description) }
  it { should validate_presence_of(:link) }
  it { should allow_value(URI::regexp(%w(http https))).for(:link) }
  it { should_not allow_value('abc.com').for(:link) }
  it { should ensure_length_of(:description).is_at_most(240) }

  it { should respond_to :user_id }
  its(:user) { should eq user }

  describe "when user_id is not present" do
  	before { @task.user_id = nil }
  	it { should_not be_valid }
  end
end
