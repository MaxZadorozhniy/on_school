class Admin::DisciplinesController < Admin::BaseController
  add_breadcrumb 'Disciplines', :admin_disciplines_path

  before_action :set_discipline, only: [:edit, :update, :destroy]

  def index
    @disciplines = Discipline.order(id: :desc).page(params[:page])
  end

  def new
    add_breadcrumb "New Discipline", new_admin_discipline_path

    @discipline = Discipline.new
  end

  def create
    @discipline = Discipline.new(discipline_params)

    if @discipline.save
      redirect_to admin_disciplines_path, notice: 'Discipline successfully created'
    else
      add_breadcrumb "New Discipline", new_admin_discipline_path

      flash.now[:alert] = 'Something went wrong'
      render :new
    end
  end

  def edit
    add_breadcrumb "Edit #{@discipline.name}", [:edit, :admin, @discipline]
  end

  def update
    if @discipline.update(discipline_params)
      redirect_to admin_disciplines_path, notice: 'Discipline successfully changed'
    else
      add_breadcrumb "Редактировать #{@discipline.name}", [:edit, :admin, @discipline]
      flash.now[:alert] = 'Something went wrong'
      render :edit
    end
  end

  def destroy
    if @discipline.destroy
      redirect_to admin_disciplines_path, notice: 'Discipline was deleted'
    else
      redirect_to admin_disciplines_path, alert: 'Something went wrong'
    end
  end

  private

  def set_discipline
    @discipline = Discipline.find(params[:id])
  end

  def set_active_main_menu_item
    @main_menu[:disciplines][:active] = true
  end

  def discipline_params
    params.require(:discipline).permit(:name)
  end
end