SignUpCustomer = {
    
    
    init : function(){
    
        //Validation
        $('form').parsley();
        
        /*Sign Up Customer*/
        
        
        
    },
    
    
    btnHandlers : function(){
        
                 //save
                 $('#btn_save_record').click(function() {
                     var btn = $(this);
                     var f = $('#frm_data');
         
                     if (Main.validateRequiredFields(f)) {
         
                         var _data = f.serializeArray(); //serialize data in array format
         
                         if (_txnMode == "new") {
                             //save new card info
                             $.ajax({
                                 "dataType": "json",
                                 "type": "POST",
                                 "url": http+"Customers/transaction/create",
                                 "data": _data,
                                 "beforeSend": function() {
                                     showSpinningProgress(btn);
                                 },
                                 error: function(xhr, status, error) {
                                     // check status && error
                                     console.log(xhr);
                                 }
                             }).done(function(response) {
                                 showNotification(response);
                                 if (response.stat == "success") {
                                     //oTable.row(oSelectedRow).data(response.row_added[0]).draw();
                                     oTable.row.add(response.row_added[0]).draw(); //add new data to user table
                                     clearFields(f); //clear all form fields
                                    $('.date-picker').val("");
                                 }
         
                             }).always(function() {
                                 showSpinningProgress(btn);
                             });
                         } else {
         
                             var c = oTable.row(oSelectedRow).data();
                             _data.push({
                                 name: "customer_id",
                                 value: c.customer_id
                             });
                             $.ajax({
                                 "dataType": "json",
                                 "type": "POST",
                                 "url": http+"Customers/transaction/update",
                                 "data": _data,
                                 "beforeSend": function() {
                                         showSpinningProgress(btn);
                                     }
         
                                     ,
                                 error: function(xhr, status, error) {
                                     // check status && error
                                     console.log(xhr);
                                 }
         
                             }).done(function(response) {
                                 showNotification(response);
                                 if (response.stat == "success") {
                                     oTable.row(oSelectedRow).data(response.row_updated[0]).draw();
                                     clearFields(f); //clear all form fields
                                     $('#modal_form').modal('hide');
                                 }
         
                             }).always(function() {
                                 showSpinningProgress(btn);
                             });
                         }
         
         
                     }
                 });
        
        
    }
    
    
    
    saveCustomerDetails : function(){
    
        
        
        
    },
    
    
    
    
    
    
}