module ApplicationHelper

	def piece_user
		@piece = Piece.find(params[:id])
	end
end
