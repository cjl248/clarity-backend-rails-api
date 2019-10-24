class UsersController < ApplicationController
  # skip_before_action :authorized, only: [:create]

  def index
    users = User.all
    render json: UserSerializer.new(users).to_serialized_json
  end

  def show
    user = User.find(params[:id])
    render json: UserSerializer.new(user).to_serialized_json
  end

  def create
    userPassword = params[:user][:password]
    new_user_params = user_params
    new_user_params[:password] = userPassword
    byebug
    user = User.create(new_user_params)
    if user.valid?
      token = encode_token({user_id: user.id})
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
      userHash = user.as_json(options)
      userHash[:token] = token
      render json: userHash, status: :created
    else
      render json: { error: 'failed to create user' }, status: :not_acceptable
    end

  end

  private

  def user_params
    params.require(:user).permit(:username, :first_name, :last_name, :experience, :password)
  end

end
