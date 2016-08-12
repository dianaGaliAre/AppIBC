class AsistenciaController < ApplicationController
  before_action :require_user, only: [:index, :show]
 
  def index
    #@asistencia = Asistencium.all
    #@alumno = Alumno.all
    @asis = nil
    @asis = Asistencium.joins(:alumno).where('asistencia.fecha =? AND asistencia.instructor_id=?',Date.current.to_s, current_user.instructor_id)
    if @asis.empty?
      ActiveRecord::Base.connection.select_all("SELECT * FROM asistencias('"+Date.current.to_s+"',#{current_user.instructor_id})")
    end
  end

  def new
    @asistencia = Asistencium.new
    #@asistencias = Asistencium.all
    @asis = Asistencium.joins(:alumno).where('asistencia.fecha =? AND asistencia.instructor_id=?',Date.current.to_s, current_user.instructor_id)
  end

  def pasar
    @asistencia = Asistencium.new
    #@asistencias = Asistencium.all
    @asis = Asistencium.joins(:alumno).where('asistencia.fecha =? AND asistencia.instructor_id=?',Date.current.to_s, current_user.instructor_id)
  end

  def create
    if @asistencia
      @asistencia = Asistencium.new(asistencia_params)
      if @asistencia.save
        @use = User.find_by
        redirect_to '/asistencia'
      else
        render 'new'
      end
    end
  end

  def update
#    Asistencium.update(params[:ids].keys, params[asistencia_params].values)
#    @asistencia = Asistencium.where('fecha = ? and  alumno_id = ?', Date.current, :alumno_ids)

    @asistencia = Asistencium.where('fecha = ?', Date.current) #where(params[:alumno_ids])
    #@asistencia = Asistencium.update(params[:asistencias].keys, params[:asistencias].values)
    @asistencia.each do |id|
    data = params["#{id.alumno_id}"]
      #params["#{id.alumno_id}"].each do |asis|
      if data != nil
        Asistencium.where(:id => data['id']).update_all(:asistencia => data['asistencia'],:falta => data['falta'],:retardo => data['retardo'])#.where('alumno_id = ?',asis.alumno_id)
      end
    end
#    if @asistencia.each{|r| r.update_attributes(params(:alumno_id),params(asistencia_params))} #@asistencia.update(asistencia_params)
      redirect_to '/asistencia'

  end

  def destroy
    @asistencia = Asistencium.find(params[:id])
    @asistencia.destroy
    redirect_to '/asistencia'
  end

  def show
    @asistencia = Asistencium.find(params[:id])
  end

  def edit
    @asistencia = Asistencium.find(params[:id])
  end

   private
    def asistencia_params
      params.require(:asistencium).permit(:alumno_id, :asistencia, :falta, :retardo)
    end

end
