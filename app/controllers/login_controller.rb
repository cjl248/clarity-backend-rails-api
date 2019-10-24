class LoginController < ApplicationController
  # skip_before_action :authorized, only: [:create]

  def create
    user = User.find_by(username: login_params[:username])
    if user && user.authenticate(login_params[:password])
      # token = encode_token({user_id: user.id})
      options = {
        include: {
          goals: {
            except: [:created_at, :updated_at]
          },
          journal_entries: {
            except: [:created_at, :updated_at]
          },
          meditation_sessions: {
            except: [:created_at, :updated_at]
          },
          inspirations: {
            except: [:created_at, :updated_at]
          }
        },
        except: [:created_at, :updated_at]
      }
      # userHash = user.as_json(options)
      # userHash[:token] = token
      # render json: userHash, status: :created
      render json: UserSerializer.new(user).to_serialized_json
    else
      render json: {messages: ["Invalid Username or Password! Please try again!"]}, status: :unauthorized
    end
  end

  private

  def login_params
    params.permit(:username, :password)
  end

end
