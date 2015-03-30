class TestPlansController < ApplicationController
  def new
    @test_plan = TestPlan.new.tap do |test_plan|
      test_plan.test_runs.new
    end
  end

  def create
    binding.pry
    params
  end

  private

  def testers
    @testers ||= Tester.find_by(id: params[:test_plan][:tester_ids])
  end
end
