  $(document).ready(function() {


      var _txnMode;
      var oTable;
      var oSelectedRow;


      //initialize datepicker fields



      //*******************************************************************************************************************
      var initializeControls = function() {
          oTable = $('#list').DataTable({
              "dom": '<"toolbar">frtip',
              "bLengthChange": false,
              "ajax": http + "/Servings/transaction/list",
              "columns": [

                  {
                      targets: [1],
                      data: "serving_id"
                  },
                  {
                      targets: [2],
                      data: "serving_description"
                  },
                  {
                      targets: [3],
                      data: "layers"
                  },
                  {
                      targets: [4],
                      data: "size"
                  },
                  {
                      targets: [5],
                      data: "price"
                  },
                  
                  {
                      targets: [6],
                      render: function(data, type, full, meta) {
                          return '<center><a href="#" id="edit_info" class="btn btn-info"><i class="glyphicon glyphicon-pencil"></i></a> <a href="#" id="delete_info" class="btn btn-danger"><i class="glyphicon glyphicon-trash"></i></a></center>';
                      }
                  }

              ]
          });

          var createToolBarButton = function() {
              var _btnNew = '<button class="btn btn-info"  id="btn_new" data-toggle="modal" data-target="" data-placement="left" title="Size and Servings" >' +
                  '<i class="glyphicon glyphicon-plus"></i> <b>Add Size and Servings Info</b></button>';
              $("div.toolbar").html(_btnNew);
          }();




      }();
      //*******************************************************************************************************************



      var bindEventHandlers = function() {

          //new
          $('#btn_new').click(function() {
              _txnMode = "new";
              var m = $('#modal_form');
            
              clearFields(m);
              m.modal('show');
            
          });

          //delete
          $('#list').on('click', '#delete_info', function() {
              oSelectedRow = $(this).closest('tr'); //selected row
              $('#modal_confirmation').modal('show');

          });

          //confirm delete
          $('#confirm_delete').click(function() {
              //alert("ENTER OVERRIDE HERE!!!!");
              $('#modal_confirmation').modal('hide');
              var u = oTable.row(oSelectedRow).data();
              $.ajax({
                  "dataType": "json",
                  "type": "POST",
                  "url": http + "Servings/transaction/delete",
                  "data": [{
                      name: "serving_id",
                      value: u.serving_id
                  }]
              }).done(function(response) {
                  showNotification(response);

                  if (response.stat == "success") {
                      oTable.row(oSelectedRow).remove().draw();
                  }

              });
          });


          //edit
          $('#list').on('click', '#edit_info', function() {
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
                          "url": http + "Servings/transaction/create",
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
                         
                          }

                      }).always(function() {
                          // showSpinningProgress(btn);
                      });
                  } else {

                      var d = oTable.row(oSelectedRow).data();
                      _data.push({
                          name: "serving_id",
                          value: d.serving_id
                      });
                      $.ajax({
                          "dataType": "json",
                          "type": "POST",
                          "url": http + "Servings/transaction/update",
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