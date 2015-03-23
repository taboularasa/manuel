class ScenariosController < ApplicationController
  helper_method :feature, :scenario

  def edit;end

  def update
    if scenario.update(scenario_params)
      flash[:success] = 'You updated the scenario!'
      redirect_to features_path
    else
      flash[:error] = 'Uh oh!'
      render :edit
    end
  end

  def destroy
    scenario.destroy
    flash[:success] = 'Scenario destroyed'
    redirect_to features_path
  end

  private

  def scenario_params
    params.require(:scenario).permit(
      :id, :_destroy, :title, steps_attributes: [ :id, :_destroy, :title ]
    )
  end

  def scenario
    @scenario ||= feature.scenarios.find(params[:id])
  end

  def feature
    @feature ||= Feature.find(params[:feature_id])
  end
end
