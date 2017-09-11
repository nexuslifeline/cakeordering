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
              "ajax": http + "/Orders/get_customer_orders/" + customer_id,
              "columns": [

                  {
                      targets: [1],
                      data: "order_id"
                  },
                  {
                      targets: [2],
                      data: "grand_price"
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
                      data: "payment_method"
                  },
                  {
                      targets: [6],
                      data: "reference_no"
                  },



                  {
                      targets: [7],
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
                  "url": http + "Orders/cancel_order",
                  "data": [{
                      name: "order_id",
                      value: c.order_id
                  }, {
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
             oSelectedRow = $(this).closest('tr'); //selec
              var data = oTable.row(oSelectedRow).data();

              console.log(data);
              $('#tab1').html('');
              $('#tab2').html('');






              $('#cost').html(data.grand_price);

            

              $('#estimated_pickedup').html(data.estimated_pickedup);
              $('#date_ordered').html(data.date_ordered);
              $('#payment_method').html(data.payment_method);
                $('#ref').html(data.reference_no);
                 $('#suggestion_box').html(data.suggestion_box);
              $('#order_status').html(data.order_status);



              load1(data);
              load2(data);
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



      function createStructureReadyCakes(value) {
          var tags = "<div class='col-lg-6 box'><div class='sale-cake-box'><div class='thumb-img-box'><a class='cake-thumbs' title='" + value.ready_cake_description + "'><img  src='" + value.image_path + "'  class='img-responsive'></a></div><div class='details'><h5> Cake ID : #C-" + value.ready_cake_id + "</h5><h5> Cake Name : " + value.ready_cake_name + "</h5><h6> Quantity : " + value.qty + "</h6><h6> Unit Price : " + value.u_price + "</h6><h6> Total Price : " + value.t_price + "</h6></div></div></div>";
          $('#tab1').append(tags);


      }



      function createStructureCakeTemplate(value) {

          var tags = "<div class='col-lg-12 box'><div class='details'><h5> Cake Template ID : #CT-" + value.cake_template_id + "</h5><h5>  Cake Name  : " + value.cake_template_name + "</h5><h6>  Quantity : " + value.qty_c + "</h6><h6>Unit  Price : " + value.u_price_c + "</h6><h6>Total  Price : " + value.t_price_c + "</h6></div><div class='col-lg-6'><h3>FRONT VIEW</h3><div class='front_view'>" + value.front_view + "</div></div><div class='col-lg-6'><h3>REAR VIEW</h3><div class='rear_view'>" + value.rear_view + "</div></div><a class='cake-thumbs' title='" + value.cake_template_description + "'></a></div>";

          $('#tab2').append(tags);


      }

      function load1(obj) {



          $.ajax({
              dataType: "json",
              type: "POST",
              url: http + 'Orders/view_order_details_rc/' + obj.order_id, //call controller class/function to execute

              success: function(response) {

                  console.log(response.data);


                  $.each(response.data, function(index, value) {


                      createStructureReadyCakes(value);

                  });

              },
              error: function(xhr, status, error) {
                  // check status && error
                  console.log(xhr);
              }
          });

      }



      function load2(obj) {



          $.ajax({
              dataType: "json",
              type: "POST",
              url: http + 'Orders/view_order_details_cc/' + obj.order_id, //call controller class/function to execute

              success: function(response) {

                  console.log(response.data);


                  $.each(response.data, function(index, value) {

                      createStructureCakeTemplate(value);


                  });

              },
              error: function(xhr, status, error) {
                  // check status && error
                  console.log(xhr);
              }
          });

      }


  });