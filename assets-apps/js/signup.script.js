
    globalVcode : '',
    

        //Validation
        $('form').parsley();
  
                 //save
                 $('#btn_sign_up').click(function() {
                     var btn = $(this);
                     var f = $('#form_signup');
                     var sendSms = '';
                     
                     if ($('#remember').prop('checked')) {
                            sendSms = 'go';
                        }else{
                            sendSms = 'no';
                        }
                     
                     alert('ss');
                     
                     if (validateRequiredFields(f)) {
         
                         var _data = f.serializeArray(); //serialize data in array format
                             //save new card info
                             $.ajax({
                                 "dataType": "json",
                                 "type": "POST",
                                 "url": http+"Customers/transaction/create/"+sendSms,
                                 "data": _data,
                                 "beforeSend": function() {
                                     showSpinningProgress(btn);
                                 },
                                 beforeSend: function() {
                                 $('#loader-modal').addClass('loading');
                                },
                                 success: function (data) {
                                   console.log(data);
                                     globalVcode = data.vcode;
                                     
                                     if(data.stat == 'success'){
                                          $("#verification_modal").click();
                                     }else{
                                     }
		                          },
                                 complete: function() {
                                     $('#loader-modal').removeClass('loading');
                                },
                                 error: function(xhr, status, error) {
                                     // check status && error
                                     console.log(xhr);
                                 }
                             }).done(function(response) {
                                showNotification(response);
                               // Main.showNotification({title:"Info!",stat:"success",msg:"Check your email for Verification Code"});
                             }).always(function() {
                                showSpinningProgress(btn);
                             });
         
                     }
                 });
        
              //save
                 $('#btn_modal_proceed').click(function() {
                  
                     console.log("Global");
                     console.log(globalVcode);
                     
                     var vcodeText = $('#vcode-text').val();
                      console.log(vcodeText);
                     
                     if(globalVcode == vcodeText){
                         console.log("Proceed");
                        showNotification({title:"Success!",stat:"success",msg:"Register Complete"});
                         $("#form-bp1").modal('hide');
                         
                     }else{
                          console.log("Dont Proceed");
                       showNotification({title:"Error!",stat:"error",msg:"Invalid Verification Code"});
                     }
                     
                 });
        
        
            
        
        

    
    

