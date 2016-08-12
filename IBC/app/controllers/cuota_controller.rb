class CuotaController < ApplicationController
  before_action :require_user, only: [:index, :show]
 
  def index
    #@asistencia = Asistencium.all
    #@alumno = Alumno.all
    @alumno = Cuota.all #oins("FULL JOIN alumnos ON alumnos.id = cuota.alumno_id") #.where('asistencia.fecha =? AND asistencia.profesor_id=?',Date.current.to_s, current_user.profesor_id)
    
  end

  def new
    @cuota = Coutum.new
    #@asistencias = Asistencium.all
    @cuo = Coutum.joins(:alumno).where('asistencia.fecha =? AND asistencia.profesor_id=?',Date.current.to_s, current_user.profesor_id)
  end

  def pasar
    @cuota = Coutum.new
    #@asistencias = Asistencium.all
    @cuo = Coutum.joins(:alumno).where('asistencia.fecha =? AND asistencia.profesor_id=?',Date.current.to_s, current_user.profesor_id)
  end

  def create
    if @cuota
      @cuota = Coutum.new(asistencia_params)
      if @cuota.save
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

    @cuota = Coutum.where('fecha = ?', Date.current) #where(params[:alumno_ids])
    #@asistencia = Asistencium.update(params[:asistencias].keys, params[:asistencias].values)
    @cuota.each do |id|
    data = params["#{id.alumno_id}"]
      #params["#{id.alumno_id}"].each do |asis|
     Coutum.where(:id => data['id']).update_all(:asistencia => data['asistencia'],:falta => data['falta'],:retardo => data['retardo'])#.where('alumno_id = ?',asis.alumno_id)
    end
#    if @asistencia.each{|r| r.update_attributes(params(:alumno_id),params(asistencia_params))} #@asistencia.update(asistencia_params)
      redirect_to '/asistencia'

  end

  def destroy
    @cuota = Asistencium.find(params[:id])
    @cuota.destroy
    redirect_to '/asistencia'
  end

  def show
    @cuota = Coutum.find(params[:id])
  end

  def edit
    @cuota = Coutum.find(params[:id])
  end

   private
    def asistencia_params
      params.require(:coutum).permit(:alumno_id, :asistencia, :falta, :retardo)
    end

end