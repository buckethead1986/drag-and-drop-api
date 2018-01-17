class Api::V1::PoemWordsController < ActionController::API
  def index
    @poem_words = PoemWord.all
    render json: @poem_words.to_json
  end

  def new

  end

  def create
    @poem_word = PoemWord.create(poem_word_params)
    render json: @poem_word.to_json
  end

  private

  def poem_word_params
    params.require(:poem_word).permit(:word_id, :poem_id)
  end
end
