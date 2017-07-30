
<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Cake_Controller extends CORE_Controller

    {
    function __construct()
        {


        parent::__construct('');
        $this->load->model(array(
            'Cake_model',
            'Cake_layer_availability_model'
        ));
        }

    public

    function transaction($txn = null)
        {
        switch ($txn)
            {
        case 'list':
            $response['data'] = $this->cake_list();
               $this->json_output(json_encode($response));
            break;

        case 'create':
            $m_cake = $this->Cake_model;
            $m_cake->begin();
            $m_cake->cake_name = $this->input->post('cake_name', TRUE);
            $m_cake->price = $this->input->post('price', TRUE);
            $m_cake->cake_description = $this->input->post('cake_description', TRUE);
            $m_cake->image_path = $this->input->post('image_path', TRUE);

            // auditing purposes

            $m_cake->save();
            $cake_id = $m_cake->last_insert_id();
            $m_cake_lam = $this->Cake_layer_availability_model;
            $layer_id = $this->input->post('layer_id', TRUE);
            for ($i = 0; $i < count($layer_id); $i++)
                {
                $m_cake_lam->layer_id = $layer_id[$i];
                  $m_cake_lam->cake_id = $cake_id;
                $m_cake_lam->save();
                }

            $m_cake->commit();
            if ($m_cake->status() === TRUE)
                {
                $response['title'] = 'Success!';
                $response['stat'] = 'success';
                $response['msg'] = 'Cake Layer Added.';
                $response['row_added'] = $this->get_response_rows($cake_id);
                }
              else
                {
                $response['title'] = 'Error!';
                $response['stat'] = 'error';
                $response['msg'] = 'Something went wrong! Please try again.';
                }

              $this->json_output(json_encode($response));
            break;

        case 'update':
            $m_cake = $this->Cake_model;
            $m_cake->begin();
            $cake_id    = $this->input->post('cake_id', TRUE);
            $m_cake->cake_name = $this->input->post('cake_name', TRUE);
            $m_cake->price = $this->input->post('price', TRUE);
            $m_cake->cake_description = $this->input->post('cake_description', TRUE);
            $m_cake->image_path = $this->input->post('image_path', TRUE);
            $m_cake->modify($cake_id);



            $m_cake_lam = $this->Cake_layer_availability_model;
            $m_cake_lam->delete_via_fk($cake_id);




            $layer_id = $this->input->post('layer_id', TRUE);
            for ($i = 0; $i < count($layer_id); $i++)
                {
                $m_cake_lam->layer_id = $layer_id[$i];
                $m_cake_lam->cake_id = $cake_id;
                $m_cake_lam->save();
                }




            $m_cake->commit();
            if ($m_cake->status() === TRUE)
                {
                $response['title'] = 'Success!';
                $response['stat'] = 'success';
                $response['msg'] = 'Cake successfully updated.';
                $response['row_updated'] = $this->get_response_rows($cake_id);
                }
              else
                {
                $response['title'] = 'Error!';
                $response['stat'] = 'error';
                $response['msg'] = 'Something went wrong! Please try again.';
                }

               $this->json_output(json_encode($response));
            break;

        case 'delete':
            $m_cake = $this->Cake_model;
            $cake_id = $this->input->post('cake_id', TRUE);
            $m_cake->begin();
            $m_cake->delete($cake_id);
            $m_cake_lam = $this->Cake_layer_availability_model;
            $m_cake_lam->delete_via_fk($cake_id);
            $m_cake_lam->commit();
            if ($m_cake->status() === TRUE)
                {
                $response['title'] = 'Success!';
                $response['stat'] = 'success';
                $response['msg'] = 'Cake Layer successfully deleted.';
                }
              else
                {
                $response['title'] = 'Error!';
                $response['stat'] = 'error';
                $response['msg'] = 'Something went wrong. Please try again later.';
                }

              $this->json_output(json_encode($response));
            break;

        case 'upload':
            $allowed = array(
                'png',
                'jpg',
                'jpeg',
                'bmp'
            );
            $data = array();
            $files = array();
            $directory = 'assets/images/cake/';
            foreach($_FILES as $file)
                {
                $server_file_name = uniqid('');
                $extension = pathinfo($file['name'], PATHINFO_EXTENSION);
                $file_path = $directory . $server_file_name . '.' . $extension;
                $orig_file_name = $file['name'];
                if (!in_array(strtolower($extension) , $allowed))
                    {
                    $response['title'] = 'Invalid!';
                    $response['stat'] = 'error';
                    $response['msg'] = 'Image is invalid. Please select a valid photo!';
                    die(   $this->json_output(json_encode($response)));
                    }

                if (move_uploaded_file($file['tmp_name'], $file_path))
                    {
                    $response['title'] = 'Success!';
                    $response['stat'] = 'success';
                    $response['msg'] = 'Image successfully uploaded.';
                    $response['path'] = $file_path;
                       $this->json_output(json_encode($response));
                    }
                }

            break;
            }
        }

    private
    function get_response_rows($id = null)
        {
        $m_cake = $this->Cake_model;
        return $m_cake->get_list('cake.is_active=TRUE AND cake.is_deleted=FALSE ' . ($id == null ? '' : ' AND cake.cake_id=' . $id) , array(
            'cake.*',
            'cla.layer_id'
        ) , array(
            array(
                'cake_layer_availability as cla',
                'cake.cake_id=cla.cake_id',
                'left'
            )
        ));
        }
    



      public
    function cake_list()
        {
        $m_cake = $this->Cake_model;
        return $m_cake->get_list();
        }
    }