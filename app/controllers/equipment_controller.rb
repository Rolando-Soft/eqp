class EquipmentController < ApplicationController
  def index
    @equipment = Equipment.all
  end

  def show
    @equipment = Equipment.find(params[:id])
  end

  def new
    @equipment = Equipment.new
    @equip_types = EquipType.all
  end

  def create
    @equipment = Equipment.new(equipment_params)

    if @equipment.save
      redirect_to equipment_index_path
    else
      render 'new'
    end
  end

  def edit
    @equipment = Equipment.find(params[:id])
    @equip_types = EquipType.all
  end

  def update
    @equipment = Equipment.find(params[:id])

    if @equipment.update(equipment_params)
      redirect_to equipment_index_path
    else
      render 'edit'
    end
  end

  def destroy
    @equipment = Equipment.find(params[:id])
    @equipment.destroy

    redirect_to equipment_index_path, status: :see_other
  end

  private
    def equipment_params
      params.require(:equipment).permit(:serial1, :serial2, :mac1, :tech_id, :equip_type_id, :warranty_exp)
    end
end
