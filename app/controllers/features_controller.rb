class FeaturesController < ApplicationController
  def index
    @features = Feature.all
  end

  def new
    @feature = Feature.new.tap {|f| f.scenarios.new.tap {|s| s.steps.new}}
  end

  def create
    binding.pry
    Feature.new(feature_params).save
    flash[:success] = 'did it'
    redirect_to features_path
  end

  private

  def feature_params
    params.require(:feature).permit(
      :title,
      scenarios_attributes: [
        :id, :_destroy, :title,
        steps_attributes: [
          :id, :_destroy, :title
        ]
      ]
    )
  end
end
