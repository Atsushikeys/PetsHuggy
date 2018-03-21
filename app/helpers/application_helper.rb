module ApplicationHelper
	def controller?(controller)
		controller.include?(params[:controller])	#引数が現在のコントローラーに含まれていたらTRUEを返す
	end

	def action?(action)
		action.include?(params[:action]) #引数が現在のアクションに含まれていたらTRUEを返す
	end

end
