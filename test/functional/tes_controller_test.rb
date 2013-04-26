require 'test_helper'

class TesControllerTest < ActionController::TestCase
  setup do
    @te = tes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create te" do
    assert_difference('Te.count') do
      post :create, te: { te01_num_seq: @te.te01_num_seq, te03_data_execucao: @te.te03_data_execucao, te04_horario_inicio_execucao: @te.te04_horario_inicio_execucao, te05_horario_fim_execucao: @te.te05_horario_fim_execucao, te06_observacoes: @te.te06_observacoes, te07_num_atendimentos: @te.te07_num_atendimentos, top_id: @te.top_id, tprof_profissional_id: @te.tprof_profissional_id, tprof_responsavel_id: @te.tprof_responsavel_id, tta_id: @te.tta_id, ttac_id: @te.ttac_id }
    end

    assert_redirected_to te_path(assigns(:te))
  end

  test "should show te" do
    get :show, id: @te
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @te
    assert_response :success
  end

  test "should update te" do
    put :update, id: @te, te: { te01_num_seq: @te.te01_num_seq, te03_data_execucao: @te.te03_data_execucao, te04_horario_inicio_execucao: @te.te04_horario_inicio_execucao, te05_horario_fim_execucao: @te.te05_horario_fim_execucao, te06_observacoes: @te.te06_observacoes, te07_num_atendimentos: @te.te07_num_atendimentos, top_id: @te.top_id, tprof_profissional_id: @te.tprof_profissional_id, tprof_responsavel_id: @te.tprof_responsavel_id, tta_id: @te.tta_id, ttac_id: @te.ttac_id }
    assert_redirected_to te_path(assigns(:te))
  end

  test "should destroy te" do
    assert_difference('Te.count', -1) do
      delete :destroy, id: @te
    end

    assert_redirected_to tes_path
  end
end
