<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Usuario_model extends MY_Model {

    var $id_col = 'id_usuario';
    var $fields = array(
        'cpf' => array(
            'type' => 'text',
            'label' => 'CNPJ',
            'rules' => 'required|valid_cpf|callback_cpf_usuario_existe',
            'label_class' => 'col-md-4',
            'prepend' => '<div class="col-md-8">',
            'append' => '</div>',
            'extra' => array('required' => 'required')
        ),
        'nome' => array(
            'type' => 'text',
            'label' => 'Nome',
            'rules' => 'required',
            'label_class' => 'col-md-4',
            'prepend' => '<div class="col-md-8">',
            'append' => '</div>',
            'extra' => array('required' => 'required')
        ),
        'email' => array(
            'type' => 'text',
            'label' => 'Email',
            'rules' => 'required|valid_email',
            'label_class' => 'col-md-4',
            'prepend' => '<div class="col-md-8">',
            'append' => '</div>',
            'extra' => array('required' => 'required')
        ),


    );


    public function login($where, $sessao) {
        $this->load->library('encrypt');
        $this->db->join('acesso', 'acesso.id_usuario=usuario.id_usuario');
        $this->db->join('perfil', 'perfil.id_perfil=acesso.id_perfil');
        if($sessao == 'usuario'){
            $this->db->where('acesso.senha is not null', null, false);
            $dados_usuario = $this->get_where($where)->result();
            if($dados_usuario){
                foreach ($dados_usuario as $item) {
                    if(!isset($usuario))
                        $usuario = $item;
                    $usuario->solucoes[] = $item->id_solucao;
                }
                unset($usuario->id_solucao);
            } else {
                $usuario = false;
            }
        } else {
            $usuario = $this->get_where($where)->row();
        }

        if ($usuario and ($this->encrypt->decode($usuario->senha) == $this->input->post('senha'))) {
            unset($usuario->senha);
            $this->session->set_userdata($sessao, $usuario);
            return true;
        } else {
            return false;
        }
    }

 
    


}
