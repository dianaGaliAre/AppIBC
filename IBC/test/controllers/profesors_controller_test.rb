require 'test_helper'

class ProfesorsControllerTest < ActionController::TestCase
  setup do
    @profesor = profesors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:profesors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create profesor" do
    assert_difference('Profesor.count') do
      post :create, profesor: { am: @profesor.am, ap: @profesor.ap, dia: @profesor.dia, dir: @profesor.dir, horario: @profesor.horario, mail: @profesor.mail, nombre: @profesor.nombre, status: @profesor.status, tel: @profesor.tel }
    end

    assert_redirected_to profesor_path(assigns(:profesor))
  end

  test "should show profesor" do
    get :show, id: @profesor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @profesor
    assert_response :success
  end

  test "should update profesor" do
    patch :update, id: @profesor, profesor: { am: @profesor.am, ap: @profesor.ap, dia: @profesor.dia, dir: @profesor.dir, horario: @profesor.horario, mail: @profesor.mail, nombre: @profesor.nombre, status: @profesor.status, tel: @profesor.tel }
    assert_redirected_to profesor_path(assigns(:profesor))
  end

  test "should destroy profesor" do
    assert_difference('Profesor.count', -1) do
      delete :destroy, id: @profesor
    end

    assert_redirected_to profesors_path
  end
end
