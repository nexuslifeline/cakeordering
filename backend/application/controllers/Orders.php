<?php


defined('BASEPATH') OR exit('No direct script access allowed');
class Orders extends CORE_Controller
{
    function __construct()
    {
        
        
        parent::__construct('');
        $this->load->model(array(
            'Cake_order_model'
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
                $m_order = $this->Cake_order_model;
                $m_order->begin();
                $m_order->cake_structure     = $this->input->post('cake_structure', TRUE);
                $m_order->suggestion_box     = $this->input->post('suggestion_box', TRUE);
                $m_order->customer_id        = $this->input->post('customer_id', TRUE);
                $m_order->cost        = $this->input->post('cost', TRUE);
                $m_order->estimated_pickedup = date('Y-m-d', strtotime($this->input->post('estimated_pickedup', TRUE)));
                $m_order->date_pickedup  = $this->input->post('date_pickedup', TRUE);
                $m_order->save();
                $cake_order_id = $m_order->last_insert_id();
                $m_order->commit();
                if ($m_order->status() === TRUE) {
                    $response['title']     = 'Success!';
                    $response['stat']      = 'success';
                    $response['msg']       = 'Order successfully';
                    $response['row_added'] = $this->get_response_rows($cake_order_id);
                } else {
                    $response['title'] = 'Error!';
                    $response['stat']  = 'error';
                    $response['msg']   = 'Something went wrong! Please try again.';
                }
                
                $this->json_output(json_encode($response));
                break;
            
            case 'update':
                $m_order       = $this->Cake_order_model;
                $cake_order_id = $this->input->post('cake_order_id', TRUE);
                
                $m_order->begin();
                $m_order->cake_structure     = $this->input->post('cake_structure', TRUE);
                $m_order->suggestion_box     = $this->input->post('suggestion_box', TRUE);
                $m_order->customer_id        = $this->input->post('customer_id', TRUE);
                $m_order->cost        = $this->input->post('cost', TRUE);
                $m_order->estimated_pickedup = date('Y-m-d', strtotime($this->input->post('estimated_pickedup', TRUE)));
                
             
                $m_order->date_finalized = $this->input->post('date_finalized', TRUE);
                $m_order->finalized_by   = $this->input->post('finalized_by', TRUE);
                $m_order->is_finalized   = $this->input->post('is_finalized', TRUE);
                $m_order->date_pickedup  = $this->input->post('date_pickedup', TRUE);
                $m_order->is_pickedup    = $this->input->post('is_pickedup', TRUE);
                
                
                $m_order->modify($cake_order_id);
                $m_order->commit();
                if ($m_order->status() === TRUE) {
                    $response['title']       = 'Success!';
                    $response['stat']        = 'success';
                    $response['msg']         = 'Order updated!';
                    $response['row_updated'] = $this->get_response_rows($cake_order_id);
                } else {
                    $response['title'] = 'Error!';
                    $response['stat']  = 'error';
                    $response['msg']   = 'Something went wrong! Please try again.';
                }
                
                $this->json_output(json_encode($response));
                break;
            
            case 'delete':
                $m_order       = $this->Cake_order_model;
                $cake_order_id = $this->input->post('cake_order_id', TRUE);
                $m_order->begin();
                
                $m_order->is_active  = 0;
                $m_order->is_deleted = 1;
                $m_order->modify($cake_order_id);
                $m_order->commit();
                if ($m_order->status() === TRUE) {
                    $response['title'] = 'Success!';
                    $response['stat']  = 'success';
                    $response['msg']   = 'Order deleted.';
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
                $directory = 'assets/images/order/';
                foreach ($_FILES as $file) {
                    $server_file_name = uniqid('');
                    $extension        = pathinfo($file['name'], PATHINFO_EXTENSION);
                    $file_path        = $directory . $server_file_name . '.' . $extension;
                    $orig_file_name   = $file['name'];
                    if (!in_array(strtolower($extension), $allowed)) {
                        $response['title'] = 'Invalid!';
                        $response['stat']  = 'error';
                        $response['msg']   = 'Image is invalid. Please select a valid photo!';
                        die($this->json_output(json_encode($response)));
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
    
    
    private function get_response_rows($id = null)
    {
        $m_order = $this->Cake_order_model;
        return $m_order->get_list('cake_orders.is_active=TRUE AND cake_orders.is_deleted=FALSE ' . ($id == null ? '' : ' AND cake_orders.cake_order_id=' . $id), array(
            'cake_orders.*',
            'c.*',
            'DATE_FORMAT(c.cust_bdate,"%m/%d/%Y")as cust_bdate',
            'CONCAT_WS(" ",c.cust_fname,c.cust_mname,c.cust_lname) as cust_fullname'
        ), array(
            array(
                'customers as c',
                'cake_orders.customer_id=c.customer_id',
                'left'
            )
        ));
    }
    
    
       
    public function get_customer_orders($id)
    {

        
       
            $m_order = $this->Cake_order_model;
            $response['data']  =   $m_order->get_list('cake_orders.is_active=TRUE AND cake_orders.is_deleted=FALSE ' . ($id == null ? '' : ' AND cake_orders.customer_id=' . $id), array(
            'cake_orders.*',
            'c.*',
            'DATE_FORMAT(c.cust_bdate,"%m/%d/%Y")as cust_bdate',
            'CONCAT_WS(" ",c.cust_fname,c.cust_mname,c.cust_lname) as cust_fullname'
        ), array(
            array(
                'customers as c',
                'cake_orders.customer_id=c.customer_id',
                'inner'
            )
        ));
   
    
            $this->json_output(json_encode($response));
      
    }
    
}
