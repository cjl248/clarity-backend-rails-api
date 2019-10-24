class MeditationSessionsController < ApplicationController

  def index
    meditation_sessions = MeditationSession.all
    options ={
      except: [:created_at, :updated_at]
    }
    render json: meditation_sessions.as_json(options)
  end

  def create
    meditation_session = MeditationSession.create(meditation_params)
    if meditation_session.valid?
      options = {
        except: [:created_at, :updated_at]
      }
      render json: meditation_session.as_json(options), status: :created
    else
      render json: {errors: meditation_session.errors.full_messages}
    end
  end

  private

  def meditation_params
    params.require(:meditation_session).permit(:user_id, :date, :length, :category)
  end

end
