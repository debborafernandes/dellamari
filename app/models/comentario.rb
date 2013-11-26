class Comentario < ActiveRecord::Base
  attr_accessible :assunto, :autor, :comentario

  include Tire::Model::Search
  include Tire::Model::Callbacks

  def self.search params
	tire.search(load: true) do
		query { string params[:query]} if params[:query].present?
		sort { by :updated_at, "desc" } if params[:query].blank?
		filter :range, created_at: {lte: Time.zone.now}
	end  	
  end

end
