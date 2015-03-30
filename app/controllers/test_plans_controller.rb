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
    @testers ||= Tester.where(id: params[:test_plan][:tester_ids])
  end

  def build_test_runs
    testers.each do |tester|
      test_plan.test_runs.create(
        test_plan_params.merge(tester_id: tester.id)
      )
    end
  end

  def test_runs_params
    params[:test_plan][:test_runs_attributes]
  end

  def test_plan
    @test_plan ||= TestPlan.find(params[:id]) || TestPlan.create
  end
end
