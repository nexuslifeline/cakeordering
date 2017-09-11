<?php


defined('BASEPATH') OR exit('No direct script access allowed');
class Categories extends CORE_Controller
{
    function __construct()
    {
        

        parent::__construct('');
        $this->load->model(array(
            'Category_model'
        ));
        
    }
    
   
    public function transaction($txn = null)
    {
        switch ($txn) {
            case 'list':
                $response['data'] = $this->get_response_rows();
                   $this->json_output(json_encode($response));
                break;
            
            case 'create':
                $m_category = $this->Category_model;
                $m_category->begin();
                  $m_category->category_name = $this->input->post('category_name', TRUE);
                $m_category->category_description = $this->input->post('category_description', TRUE);
                         
                
                // auditing purposes
                
                $m_category->save();
                $category_id = $m_category->last_insert_id();
                $m_category->commit();
                if ($m_category->status() === TRUE) {
                    $response['title']     = 'Success!';
                    $response['stat']      = 'success';
                    $response['msg']       = 'Category successfully added!';
                    $response['row_added'] = $this->get_response_rows($category_id);
                } else {
                    $response['title'] = 'Error!';
                    $response['stat']  = 'error';
                    $response['msg']   = 'Something went wrong! Please try again.';
                }
                
                   $this->json_output(json_encode($response));
                break;
            
            case 'update':
                $m_category = $this->Category_model;
                $category_id        = $this->input->post('category_id', TRUE);
             
               
                   $m_category->category_name = $this->input->post('category_name', TRUE);
                $m_category->category_description = $this->input->post('category_description', TRUE);
                                         
                

                $m_category->modify($category_id);
                $m_category->commit();
                if ($m_category->status() === TRUE) {
                    $response['title']       = 'Success!';
                    $response['stat']        = 'success';
                    $response['msg']         = 'Category successfully updated.';
                    $response['row_updated'] = $this->get_response_rows($category_id);
                } else {
                    $response['title'] = 'Error!';
                    $response['stat']  = 'error';
                    $response['msg']   = 'Something went wrong! Please try again.';
                }
                
                   $this->json_output(json_encode($response));
                break;
            
            case 'delete':
                $m_category = $this->Category_model;
                $category_id        = $this->input->post('category_id', TRUE);
                $m_category->begin();
        
                $m_category->is_active = 0;
                $m_category->is_deleted = 1;
                $m_category->modify($category_id);
                $m_category->commit();
                if ($m_category->status() === TRUE) {
                    $response['title'] = 'Success!';
                    $response['stat']  = 'success';
                    $response['msg']   = 'Serving  successfully deleted.';
                } else {
                    $response['title'] = 'Error!';
                    $response['stat']  = 'error';
                    $response['msg']   = 'Something went wrong. Please try again later.';
                }
                
                   $this->json_output(json_encode($response));
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
                $directory = 'assets/images/categories/';
                foreach ($_FILES as $file) {
                    $server_file_name = uniqid('');
                    $extension        = pathinfo($file['name'], PATHINFO_EXTENSION);
                    $file_path        = $directory . $server_file_name . '.' . $extension;
                    $orig_file_name   = $file['name'];
                    if (!in_array(strtolower($extension), $allowed)) {
                        $response['title'] = 'Invalid!';
                        $response['stat']  = 'error';
                        $response['msg']   = 'Image is invalid. Please select a valid photo!';
                        die(   $this->json_output(json_encode($response)));
                    }
                    
                    if (move_uploaded_file($file['tmp_name'], $file_path)) {
                        $response['title'] = 'Success!';
                        $response['stat']  = 'success';
                        $response['msg']   = 'Image successfully uploaded.';
                        $response['path']  = $file_path;
                            $this->json_output(json_encode($response));
                    }
                }
                
                break;
            
   
        }
    }
    
    
      private  function get_response_rows($id=null){
        $m_category=$this->Category_model;

        return  $m_category->get_list(

            //send the parameter for filtering
            'categories.is_active=1 AND categories.is_deleted=0'.($id==null?'':' AND categories.category_id='.$id),

            //send array parameter for fields required
            array(
                'categories.*'
            )
        );

    }
    

    
    
}


