class UserSerializer

  def initialize(user_object)
    @user = user_object
  end

  def to_serialized_json
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
    @user.to_json(options)
  end

end
