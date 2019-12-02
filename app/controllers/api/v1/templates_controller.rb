class API::V1::TemplatesController < API::V1Controller
	before_action :set_template, only: [:show, :update, :destroy]

	# GET /api/v1/templates
	def index
		@templates = Template.all

		render json: @templates
	end

	# GET /api/v1/templates/1
	def show
		render json: @template
	end

	# POST /api/v1/templates
	def create
		@template = Template.new(template_params)

		if @template.save
			render json: @template, status: :created, location: @template
		else
			render json: @template.errors, status: :unprocessable_entity
		end
	end

	# PATCH/PUT /api/v1/templates/1
	def update
		if @template.update(template_params)
			render json: @template
		else
			render json: @template.errors, status: :unprocessable_entity
		end
	end

	# DELETE /api/v1/templates/1
	def destroy
		@template.destroy
	end

	private

		def set_template
			@template = Template.find(params[:id])
		end

		def template_params
			params.require(:template).permit(:markup, :skeleton)
		end
end
