class Admin::PositionsController < Admin::BaseController
  before_action :load_position, only: %i[edit update destroy current_pl]
  before_action :load_pairs, only: %i[new edit]
  before_action :load_sources, only: %i[new edit]

  def index
    @positions = Position
      .all
      .includes(:pair, :source, order: :source)
      .order(created_at: :desc)
      .limit(100)

    if params[:from] 
      @positions = @positions.where(
        "created_at > ?", 
        Time.parse("#{params[:from]} 00:00:00 #{Time.zone.name}").utc.to_s(:db)
      )
    end
    if params[:to]
      @positions = @positions.where(
        "created_at < ?", 
        Time.parse("#{params[:to]} 00:00:00 #{Time.zone.name}").utc.to_s(:db)
      )
    end
    if params[:source_id]
      @positions = Source.find(params[:source_id]).all_positions
    end

  end

  def new
    @position = Position.new
  end

  def create
    @position = Position.new(position_params)
    @position.ig_open_position if @position.save

    redirect_to admin_positions_path
  end

  def edit
    
  end

  def update
    @position.update(position_params)
    redirect_to admin_positions_path
  end

  def destroy
    @position.destroy
    redirect_to admin_positions_path
  end

  def current_pl
    render json: {
      pl: "ongoing"
    }
  end

  private

    def load_position
      @position = Position.find(params[:id])
    end

    def position_params
      params.require(:position).permit!
    end

    def load_pairs
      @pairs = Pair.order(:base, :quote)
    end

    def load_sources
      @sources = Source.all
    end

end
