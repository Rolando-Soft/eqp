class EquipTypesController < ApplicationController
  def index
    @equip_types = EquipType.all
  end

  def new
    @equip_type = EquipType.new
  end

  def create
    @type = EquipType.new(equip_type_params)
    if @type.save
      redirect_to equip_types_path
    else
      render "new"
    end
  end
  def edit
    @equip_type = EquipType.find(params[:id])
  end

  def update
    equip_type = EquipType.find(params[:id])
    if equip_type.update(equip_type_params)
      redirect_to equip_types_path
    else
      render :edit
    end
  end

  private
  def equip_type_params
    params.require(:equip_type).permit(:description)
  end
end
