<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Cake_layer_2_Controller extends CORE_Controller
{
    function __construct()
    {
        
        //$this->custom_token();
        
        parent::__construct('');
        $this->load->model(array(
            'Cake_layer_2_model'
        ));
        
    }
    

    
    public function transaction($txn = null)
    {
        switch ($txn) {
            case 'list':
                $response['data'] = $this->get_response_rows();
                echo json_encode($response);
                break;
            
            case 'create':
                $m_cake_layer_2= $this->Cake_layer_2_model;
         
                $m_cake_layer_2->begin();
                $m_cake_layer_2->cake_description = $this->input->post('cake_description', TRUE);
                $m_cake_layer_2->image_path = sha1($this->input->post('image_path', TRUE));
         
                
                // auditing purposes
                
                $m_cake_layer_2->save();
                $cake_id = $m_cake_layer_2->last_insert_id();
                $m_cake_layer_2->commit();
                if ($m_cake_layer_2->status() === TRUE) {
                    $response['title']     = 'Success!';
                    $response['stat']      = 'success';
                    $response['msg']       = 'Cake Layer Added.';
                    $response['row_added'] = $this->get_response_rows($cake_id);
                } else {
                    $response['title'] = 'Error!';
                    $response['stat']  = 'error';
                    $response['msg']   = 'Something went wrong! Please try again.';
                }
                
                echo json_encode($response);
                break;
            
            case 'update':
                $m_cake_layer_2 = $this->Cake_layer_2_model;
                $cake_id        = $this->input->post('cake_id', TRUE);
                    $m_cake_layer_2->begin();
                $m_cake_layer_2->cake_description = $this->input->post('cake_description', TRUE);
                $m_cake_layer_2->image_path = sha1($this->input->post('image_path', TRUE));
         
                // auditing purposes
                
                $m_cake_layer_2->modify($cake_id);
                $m_cake_layer_2->commit();
                if ($m_cake_layer_2->status() === TRUE) {
                    $response['title']       = 'Success!';
                    $response['stat']        = 'success';
                    $response['msg']         = 'Cake successfully updated.';
                    $response['row_updated'] = $this->get_response_rows($cake_id);
                } else {
                    $response['title'] = 'Error!';
                    $response['stat']  = 'error';
                    $response['msg']   = 'Something went wrong! Please try again.';
                }
                
                echo json_encode($response);
                break;
            
            case 'delete':
                $m_cake_layer_2 = $this->Cake_layer_2_model;
                $cake_id        = $this->input->post('cake_id', TRUE);
                $m_cake_layer_2->begin();
                $m_cake_layer_2->is_deleted = 1;
                
                $m_cake_layer_2->modify($cake_id);
                
                // make sure to update status of the cust
                
                $m_cake_layer_2->is_active = 0;
                $m_cake_layer_2->modify($cake_id);
                $m_cake_layer_2->commit();
                if ($m_cake_layer_2->status() === TRUE) {
                    $response['title'] = 'Success!';
                    $response['stat']  = 'success';
                    $response['msg']   = 'Cake Layer successfully deleted.';
                } else {
                    $response['title'] = 'Error!';
                    $response['stat']  = 'error';
                    $response['msg']   = 'Something went wrong. Please try again later.';
                }
                
                echo json_encode($response);
                break;
            
            case 'upload':
                $allowed   = array(
                    'png',
                    'jpg',
                    'jpeg',
                    'bmp'
                );
                $data      = array();
                $files     = array();
                $directory = 'assets/images/cake/';
                foreach ($_FILES as $file) {
                    $server_file_name = uniqid('');
                    $extension        = pathinfo($file['name'], PATHINFO_EXTENSION);
                    $file_path        = $directory . $server_file_name . '.' . $extension;
                    $orig_file_name   = $file['name'];
                    if (!in_array(strtolower($extension), $allowed)) {
                        $response['title'] = 'Invalid!';
                        $response['stat']  = 'error';
                        $response['msg']   = 'Image is invalid. Please select a valid photo!';
                        die(json_encode($response));
                    }
                    
                    if (move_uploaded_file($file['tmp_name'], $file_path)) {
                        $response['title'] = 'Success!';
                        $response['stat']  = 'success';
                        $response['msg']   = 'Image successfully uploaded.';
                        $response['path']  = $file_path;
                        echo json_encode($response);
                    }
                }
                
                break;
            
          
        }
    }
    
   private  function get_response_rows($id=null){
        $m_cake_layer_2=$this->Cake_layer_2_model;

        return  $m_cake_layer_2->get_list(

            //send the parameter for filtering
            'cake_layer_2.is_active=1 AND  cake_layer_2.is_deleted=0'.($id==null?'':' AND  cake_layer_2.cake_id='.$id),

            //send array parameter for fields required
            array(
                ' cake_layer_2.*'
            )
        );

    }
    
    
    
    
}