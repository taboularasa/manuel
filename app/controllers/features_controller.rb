class FeaturesController < ApplicationController
  def index
    @features = Feature.all
  end

  def new
    @feature = Feature.new.tap {|f| f.scenarios.new.tap {|s| s.steps.new}}
  end

  def create
    Feature.new(feature_params).save
    flash[:success] = 'you did it!'
    redirect_to features_path
  end

  def edit
    @feature = Feature.find(params[:id])
  end

  def update
    @feature = Feature.find(params[:id])
    if @feature.update_attributes(feature_params)
      flash[:success] = 'You updated it!'
      redirect_to features_path
    else
      flash[:error] = 'Uh oh!'
      render :edit
    end
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
