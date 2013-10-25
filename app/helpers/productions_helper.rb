module ProductionsHelper

	def piece_user
		@piece = Piece.find(params[:piece_id])
	end

	def production_number
		@piece = Piece.find(params[:piece_id])
		if @piece.productions == []
			@production_number = 1
		else
			@production = @piece.productions.maximum("number")
			@production_number = @production + 1
		end
	end
end
