SignUpCustomer = {
    
    http : 'http://localhost:8082/cakeordering/backend/',

    init : function(){
        
        var self = this;
        //Validation
        $('form').parsley();
        
        /*Sign Up Customer*/
        self.btnHandlers();
            
        
        
    },
    
    
    btnHandlers : function(){
        
        var self = this;
                 //save
                 $('#btn_sign_up').click(function() {
                     var btn = $(this);
                     var f = $('#form_signup');
                     
                     console.log('YOu CLick me');
                     console.log(f);
                     
                     
                     if (Main.validateRequiredFields(f)) {
         
                         var _data = f.serializeArray(); //serialize data in array format
                         
                             console.log('Game');
         
                             //save new card info
                             $.ajax({
                                 "dataType": "json",
                                 "type": "POST",
                                 "url": self.http+"Customers/transaction/create",
                                 "data": _data,
                                 "beforeSend": function() {
                                     Main.showSpinningProgress(btn);
                                 },
                                 error: function(xhr, status, error) {
                                     // check status && error
                                     console.log(xhr);
                                 }
                             }).done(function(response) {
                                 console.log("Done");
                                 Main.showNotification(response);
         
                             }).always(function() {
                                  console.log("Done2");
                                 Main.showSpinningProgress(btn);
                             });
         
                     }
                 });
        
        
    },
    
    
    
    saveCustomerDetails : function(){
    
        
        
        
    },
    
    
    
    
    
    
}