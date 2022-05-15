class Admin::TeachersController < Admin::BaseController
  add_breadcrumb 'Teachers', :admin_teachers_path

  before_action :set_teacher, only: [:edit, :update, :destroy]

  def index
    @teachers = Teacher.order(id: :desc).page(params[:page])
  end

  def new
    add_breadcrumb "New Teacher", new_admin_teacher_path

    @teacher = Teacher.new
  end

  def edit
    add_breadcrumb "Edit #{@teacher.first_name} #{@teacher.last_name}", [:edit, :admin, @teacher]
  end

  def create
    @teacher = Teacher.new(teacher_params)

    if @teacher.save
      redirect_to admin_teachers_path, notice: 'Teacher successfully created'
    else
      add_breadcrumb "New Teacher", new_admin_teacher_path

      flash.now[:alert] = 'Something went wrong'
      render :new
    end
  end

  def update
    if @teacher.update(teacher_params)
      redirect_to admin_teachers_path, notice: 'Teacher successfully changed'
    else
      flash.now[:alert] = 'Something went wrong'
      render :edit
    end
  end

  def destroy
    if @teacher.destroy
      redirect_to admin_teachers_path, notice: 'Teacher was deleted'
    else
      redirect_to admin_teachers_path, alert: 'Something went wrong'
    end
  end

  private

  def teacher_params
    params.require(:teacher).permit(:first_name, :last_name, :description)
  end

  def set_teacher
    @teacher = Teacher.find(params[:id])
  end

  def set_active_main_menu_item
    @main_menu[:teachers][:active] = true
  end
end
