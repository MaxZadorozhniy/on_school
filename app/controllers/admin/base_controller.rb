class Admin::BaseController < ApplicationController
  layout 'admin'

  before_action :authenticate_admin!
  before_action :set_main_menu, except: :destroy
  before_action :set_active_main_menu_item, except: :destroy

  private

  def set_main_menu
    @main_menu = { teachers: { name: 'Teachers', path: admin_teachers_path },
                   disciplines: { name: 'Disciplines', path: admin_disciplines_path } }
  end
end
