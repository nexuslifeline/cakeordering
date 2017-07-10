
var ctrl_url = 'http://localhost:8082/cakeordering/backend/';

            $('#btn_login').click(function(){
                var btn=$(this);
                var f=$('#frm_login');

                if(validateRequiredFields(f)){

                    var _data=f.serializeArray(); //serialize data in array format
  
                        console.log(_data);

                        $.ajax({
                            "dataType":"json",
                            "type":"POST",
                            "url":ctrl_url+"Customers/auth_cust",
                            "data":_data,
                            "beforeSend" : function(){
                               showSpinningProgress(btn);
                            },error: function(xhr, status, error) {
                                // check status && error
                                console.log(xhr);
                                }
                        }).done(function(response){
                                console.log(response)
                                 showNotification(response);
                        
                           
                            if(response.stat=="success"){
                                setTimeout(function(){
                                window.location.href = 'dashboard';
                            },600);
                            }

                        }).always(function(){
                          
                        });
                 

                }
            });




var _required_token=function(){
    $.ajaxSetup({
        headers: {
        'X-CSRF-TOKEN': $('meta[name="_token"]').attr('content')
        }
    })

};


