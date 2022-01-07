class LocationsController < ApplicationController

    before_action :id, only: [:show, :destroy, :update]

    def index
        render json: Location.all
    end

    def show
        render json: Location.find(@id)
    end

    def create
        p params

        locations = Location.new(location_params)

        if locations.save
            render(status: 201, json:{locations: locations})
        else 
            render(status: 422, json: {locations: locations})
        end
    end

    def update
        locations = Location.find(@id)
        locations.update(location_params)
        render json: {locations: locations}
    end

    def destroy
        locations = Location.destroy(@id)
        render status: 204
    end

    private

    def location_params
        params.require(:location).permit(:name, :description, :street, :city, :state, :zipcode, :phone, :email, :photos)
    end

    def id
        @id = params[:id]
    end
end