class Admin::TeachersController < Admin::BaseController
  def index
    @teachers = Teacher.order(id: :desc)
  end

  def new
    @teacher = Teacher.new
  end

  def edit
  end

  def create
    @teacher = Teacher.new(teacher_params)

    if @teacher.save
      redirect_to admin_teachers_path, notice: 'Teacher successfully created'
    else
      flash.now[:alert] = 'Something went wrong'
      render :new
    end
  end

  def update
  end

  def destroy
  end

  private

  def teacher_params
    params.require(:teacher).permit(:first_name, :last_name, :description)
  end

  def set_active_main_menu_item
    @main_menu[:teachers][:active] = true
  end
end