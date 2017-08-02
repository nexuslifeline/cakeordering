  $(document).ready(function() {


      var _txnMode;
      var oTable;
      var oSelectedRow;
      var customer_id = localStorage.customer_id;

      //initialize datepicker fields



      //*******************************************************************************************************************
      var initializeControls = function() {
          oTable = $('#list').DataTable({
              "dom": '<"toolbar">frtip',
              "bLengthChange": false,
              "ajax": http + "/Orders/get_customer_orders/"+customer_id,
              "columns": [

                  {
                      targets: [1],
                      data: "cake_order_id"
                  },
                  {
                      targets: [2],
                      data: "cost"
                  },
                  {
                      targets: [3],
                      data: "status"
                  },
                  {
                      targets: [4],
                      data: "estimated_pickedup"
                  },



                  {
                      targets: [5],
                      render: function(data, type, full, meta) {
                          return '<center><a href="#" id="view_info" class="btn btn-success" title="View Order Details"><i class="glyphicon glyphicon-folder-open"></i></a> <a href="#" id="delete_info" class="btn btn-danger" title="Cancel Order"><i class="glyphicon glyphicon-remove"></i></a></center>';
                      }
                  }

              ]
          });

     


      }();
      //*******************************************************************************************************************



      var bindEventHandlers = function() {

    
          //delete
          $('#list').on('click', '#delete_info', function() {
              oSelectedRow = $(this).closest('tr'); //selected row
              $('#modal_confirmation').modal('show');

          });

          //confirm delete
          $('#confirm_delete').click(function() {
              //alert("ENTER OVERRIDE HERE!!!!");
              $('#modal_confirmation').modal('hide');
              var c = oTable.row(oSelectedRow).data();
              $.ajax({
                  "dataType": "json",
                  "type": "POST",
                  "url": http + "Orders/transaction/delete",
                  "data": [{
                      name: "cake_order_id",
                      value: c.cake_order_id
                  }]
              }).done(function(response) {
                  showNotification(response);

                  if (response.stat == "success") {
                      oTable.row(oSelectedRow).remove().draw();
                  }

              });
          });


          //edit
          $('#list').on('click', '#view_info', function() {
              _txnMode = "edit";
              oSelectedRow = $(this).closest('tr');
              var data = oTable.row(oSelectedRow).data();
              var _parent = $('#modal_form');
              $('input,textarea', _parent).each(function() {
                  var _elem = $(this);
                  $.each(data, function(name, value) {
                      if (_elem.attr('name') == name) {
                          _elem.val(value);
                      }
                  });
              });

              $('#span_note').show();

              $('input[name="user_pword"]').val("");
              $('#modal_form').modal('show');

          });


          //save
          $('#btn_save_record').click(function() {
              var btn = $(this);
              var f = $('#frm_data');

              if (validateRequiredFields(f)) {

                  var _data = f.serializeArray(); //serialize data in array format

                  if (_txnMode == "new") {
                      //save new card info
                      $.ajax({
                          "dataType": "json",
                          "type": "POST",
                          "url": http + "Users/transaction/create",
                          "data": _data,
                          "beforeSend": function() {
                              // showSpinningProgress(btn);
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
                          // showSpinningProgress(btn);
                      });
                  } else {

                      var d = oTable.row(oSelectedRow).data();
                      _data.push({
                          name: "user_account_id",
                          value: d.user_account_id
                      });
                      $.ajax({
                          "dataType": "json",
                          "type": "POST",
                          "url": http + "Users/transaction/update",
                          "data": _data,
                          "beforeSend": function() {
                                  // showSpinningProgress(btn);
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
                          //  showSpinningProgress(btn);
                      });
                  }


              }
          });

      }();




  });