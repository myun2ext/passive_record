require "passive_record/query/select"

describe PassiveRecord::Query::Select do
  context "all" do
    subject { PassiveRecord::Query::Select.select(:example) }
    it { should eq "SELECT * FROM example" }
  end

  context "one column" do
    subject { PassiveRecord::Query::Select.select(:example, :one) }
    it { should eq "SELECT one FROM example" }
  end

  context "many column" do
    subject { PassiveRecord::Query::Select.select(:example, :one, :two, :three) }
    it { should eq "SELECT one, two, three FROM example" }
  end
end
