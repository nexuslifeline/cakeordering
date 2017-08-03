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
              "ajax": http + "/Ready_Made_Orders/get_customer_orders/" + customer_id,
              "columns": [

                  {
                      targets: [1],
                      data: "ready_cake_order_id"
                  },
                  {
                      targets: [2],
                      data: "cost"
                  },
                  {
                      targets: [3],
                      data: "estimated_pickedup"
                  },
                  {
                      targets: [4],
                      data: "order_status"
                  },



                  {
                      targets: [5],
                      render: function(data, type, full, meta) {
                          if (full.order_status == 'cancel') {
                              return '<center><a  href="#" id="view_info" class="btn btn-success" title="View Order Details"><i class="glyphicon glyphicon-folder-open"></i></a> </center>';


                          } else if (full.is_finalized == 1) {
                              return '<center><a  href="#" id="view_info" class="btn btn-success" title="View Order Details"><i class="glyphicon glyphicon-folder-open"></i></a> </center>';


                          } else {

                              return '<center><a  href="#" id="view_info" class="btn btn-success" title="View Order Details"><i class="glyphicon glyphicon-folder-open"></i></a> <a href="#" id="delete_info" class="btn btn-danger" title="Cancel Order"><i class="glyphicon glyphicon-remove"></i></a></center>';


                          }
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
                  "url": http + "Ready_Made_Orders/cancel_order",
                  "data": [{
                      name: "ready_cake_order_id",
                      value: c.ready_cake_order_id
                  },{
                      name: "order_status",
                      value: "cancel"
                     
                  }]
              }).done(function(response) {
                  showNotification(response);

                  if (response.stat == "success") {
                      oTable.row(oSelectedRow).data(response.row_updated[0]).draw();
                  }

              });
          });


          //edit
          $('#list').on('click', '#view_info', function() {
              _txnMode = "edit";
              oSelectedRow = $(this).closest('tr');
              var data = oTable.row(oSelectedRow).data();
              var _parent = $('#modal_form');



              $('#cost').html(data.cost);

              $('#image_path').attr('src',data.image_path);

              $('#estimated_pickedup').html(data.estimated_pickedup);
              $('#date_ordered').html(data.date_ordered);
              $('#date_pickedup').html(data.date_pickedup);
              $('#order_status').html(data.order_status);

              $('#modal_form').modal('show');

          });


     

      }();



      var findResponseToHTML = function(_parentHTML, response_row) {
          $('span,p,h1,h4,div,input', _parentHTML).each(function() {
              var _elem = $(this);
              $.each(response_row, function(name, value) {
                  if (_elem.attr('name') == name) {
                      _elem.html(value);
                  }
              });
          });

      }


  });