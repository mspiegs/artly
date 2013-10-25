class ProductionsController < ApplicationController
	include ProductionsHelper
	before_filter :piece_user, :production_number

	def index
		@productions = @piece.productions
	end

	def show

		@production = Production.find(params[:id])

		respond_to do |format|
      		format.html # show.html.erb
      		format.json { render json: @piece }
    	end
	end

	def new
		#@piece = Piece.find(params[:piece_id])
		@production = @piece.productions.new

		# respond_to do |format|
  #     		format.html # new.html.erb
  #     		format.json { render json: @production }
  #   	end
  	end

  	def create
  		#@piece = Piece.find(params[:piece_id])
	    @production = @piece.productions.new(params[:production])

	    respond_to do |format|
	      if @production.save
	        format.html { redirect_to [@piece], notice: 'Production was successfully created.' }
	        format.json { render json: @production, status: :created, location: @production }
	      else
	        format.html { render action: "new" }
	        format.json { render json: @production.errors, status: :unprocessable_entity }
	      end
	    end
    end
end
