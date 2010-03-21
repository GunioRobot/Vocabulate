class TestController < ApplicationController
  
  layout 'layout'
  
  def index
    
    @lists = List.find(:all)
  
  end
  
  
  def list
    
    @lists = List.find(:all)    
    
    @list = List.find(params[:id])
    
    @new_word = Word.find(
      :all,
      :joins => :lists,
      :conditions => ["list_id = ?", @list.id]
      # :limit => 1
    ).sort_by{rand}.first

    if params[:word_to_check]
      word_to_check = Word.find(params[:word_to_check])
      attempt = params[:attempt]

      if attempt == word_to_check.word
        @message = "Correct!"
      else
        @message = "Oops! You typed #{attempt}. Try again."
        @new_word = word_to_check
      end
    end
  end
  
end