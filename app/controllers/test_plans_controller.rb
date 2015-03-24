class TestPlansController < ApplicationController
  def new
    @test_plan = TestPlan.new.tap do |test_plan|
      test_plan.test_runs.new unless test_plan.test_runs.any?
    end
  end
end
