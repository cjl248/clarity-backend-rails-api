class JournalEntriesController < ApplicationController

  def index
    journal_entries = JournalEntry.all
    options ={
      except: [:created_at, :updated_at]
    }
    render json: journal_entries.as_json(options)
  end

  def create
    journal_entry = JournalEntry.create(journal_entry_params)
    if journal_entry.valid?
      options = {
        except: [:created_at, :updated_at]
      }
      render json: journal_entry.as_json(options), status: :created
    else
      render json: {errors: journal_entry.errors.full_messages}
    end
  end

  def destroy
    journal_entry = JournalEntry.find(params[:id])
    journal_entry.destroy()
    render json: {message: "#{journal_entry.title} was destroyed"}
  end

  private

  def journal_entry_params
    params.require(:journal_entry).permit(:user_id, :title, :date, :content)
  end

end
