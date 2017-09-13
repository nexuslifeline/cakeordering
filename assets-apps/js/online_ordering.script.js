  $(document).ready(function() {


      loadCakes();

      loadVerifiedTemplate();



      load_category_list();


      $('#category_type').on('change', function(e) {
          var optionSelected = $("option:selected", this);
          var valueSelected = this.value;

          $('#tab1-container').html('');
          loadSelectedItem(valueSelected);

      });



      $('#payment_method').on('change', function(e) {
          var optionSelected = $("option:selected", this);
          var valueSelected = this.value;


          if (valueSelected == 'g-cash') {

              $('#e-details1').show();
              $('#e-details2').hide();
          } else {
              $('#e-details2').show();
              $('#e-details1').hide();

          }

      });

      var catStructure = function(obj) {

          var tags = "<option value=" + obj.category_id + " >" + obj.category_name + "</option";

          $('#category_id').append(tags);
          $('#category_type').append(tags);
      }




      function loadSelectedItem(valueSelected) {



          $.ajax({
              dataType: "json",
              type: "POST",
              url: http + 'Ready_cakes/get_selected_items/' + valueSelected, //call controller class/function to execute

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

      function load_category_list() {



          $.ajax({
              dataType: "json",
              type: "POST",
              url: http + 'Categories/transaction/list', //call controller class/function to execute

              success: function(response) {

                  console.log(response.data);


                  $.each(response.data, function(index, value) {

                      catStructure(value);


                  });

              },
              error: function(xhr, status, error) {
                  // check status && error
                  console.log(xhr);
              }
          });

      }



      $(document).on('click', '.btn-place-order', function() {

          var price = $(this).data('price');
          var itemname = $(this).data('itemname');
          var ready_cake_id = $(this).data('ready-cake-id');

          if ($("#list1 td [data-ready-cake-id=" + ready_cake_id + "]").length > 0) {


              PNotify.removeAll(); //remove all notifications
              new PNotify({
                  title: 'Notification',
                  text: 'Item is already in the cart!',
                  type: 'info'
              });
          } else {
              var htmltags = '<tr class="trx"><td> #C-' + ready_cake_id + '</td><td>' + itemname + '</td><td><input  data-ready-cake-id=' + ready_cake_id + ' type="hidden" name="ready_cake_id[]" value=' + ready_cake_id + '><input type="text"  name="qty[]" class="qty" value=1><input type="hidden" name="u_price[]"  value=' + price + ' class="u_price"> <input type="hidden" class="t_price" name="t_price[]" value=' + price + '></td><td>' + price + ' </td><td class="html-t-price">' + price + '</td></tr>';
              var htmltags2 = '<tr><td colspan=5><textarea type="text" class="form-control"   name="suggestion_box_rc[]" id="suggestion_box_rc" placeholder="Cake Details"></textarea></td></tr>';
              $('#list1 tbody').append(htmltags+htmltags2);
          }

          compute();

      });




      $(document).on('click', '.btn-place-order2', function() {

          var price = $(this).data('price');
          var itemname = $(this).data('itemname');
          var cake_template_id = $(this).data('cake-template-id');

          if ($("#list2 td [data-cake-template-id=" + cake_template_id + "]").length > 0) {


              PNotify.removeAll(); //remove all notifications
              new PNotify({
                  title: 'Notification',
                  text: 'Item is already in the cart!',
                  type: 'info'
              });
          } else {
              var htmltags = '<tr class="trx"><td> #CT-' + cake_template_id + '</td><td>' + itemname + '</td><td><input  data-cake-template-id=' + cake_template_id + ' type="hidden" name="cake_template_id[]" value=' + cake_template_id + '><input type="text"  name="qty_c[]" class="qty_c" value=1><input type="hidden" name="u_price_c[]"  value=' + price + ' class="u_price_c"> <input type="hidden" class="t_price_c" name="t_price_c[]" value=' + price + '></td><td>' + price + ' </td><td class="html-t-price-c">' + price + '</td></tr>';
              var htmltags2 = '<tr><td colspan=5><textarea type="text" class="form-control"   name="suggestion_box_cc[]" id="suggestion_box_cc" placeholder="Cake Details"></textarea></td></tr>';
              $('#list2 tbody').append(htmltags+htmltags2);
          }

          compute();

      });


      function createStructureReadyCakes(value) {
          var tags = "<div class='col-lg-6 box'><div class='sale-cake-box'><div class='thumb-img-box'><a class='cake-thumbs' title='" + value.ready_cake_description + "'><img  src='" + value.image_path + "'  class='img-responsive'></a></div><div class='details'><h5> Cake ID : #C-" + value.ready_cake_id + "</h5><h5> " + value.ready_cake_name + "</h5><h6> " + value.price + "</h6><button class='btn btn-warning btn-place-order'  data-ready-cake-id=" + value.ready_cake_id + " data-price=" + value.price + " data-itemname='" + value.ready_cake_name + "'><i class='glyphicon glyphicon-plus'></i> Add to Cart</button></div></div></div>";
          $('#tab1-container').append(tags);


      }



      function createStructureCakeTemplate(value) {

          var tags = "<div class='col-lg-12 box'><div class='details'><h5> Cake Template ID : #CT-" + value.cake_template_id + "</h5><h5> " + value.cake_template_name + "</h5><h6> " + value.actual_price + "</h6><button class='btn btn-warning btn-place-order2'  data-cake-template-id=" + value.cake_template_id + " data-price=" + value.actual_price + " data-itemname='" + value.cake_template_name + "'><i class='glyphicon glyphicon-plus'></i> Add to Cart</button></div><div class='col-lg-6'><h3>FRONT VIEW</h3><div class='front_view'>" + value.front_view + "</div></div><div class='col-lg-6'><h3>REAR VIEW</h3><div class='rear_view'>" + value.rear_view + "</div></div><a class='cake-thumbs' title='" + value.cake_template_description + "'></a></div>";

          $('#tab2').append(tags);


      }



      function loadCakes() {



          $.ajax({
              dataType: "json",
              type: "POST",
              url: http + 'Ready_cakes/transaction/list', //call controller class/function to execute

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




      $(document).on('input', '.qty,.qty_c', function() {


          compute();


      });

      function loadVerifiedTemplate() {



          $.ajax({
              dataType: "json",
              type: "POST",
              url: http + 'Cake_templates/get_verified_templates/' + localStorage.customer_id, //call controller class/function to execute

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




      $('#btn_save_record').click(function() {


          compute();
          if ($("#list1 input.qty").length > 0 || $("#list2 input.qty_c").length > 0) {




              var btn = $(this);
              var f = $('#frm_data');

              if (validateRequiredFields(f)) {

                  var _data = f.serializeArray(); //serialize data in array format



                  _data.push({
                      name: "customer_id",
                      value: localStorage.customer_id
                  });




                  console.log(_data);




                  $.ajax({
                      "dataType": "json",
                      "type": "POST",
                      "url": http + "Orders/transaction/create",
                      "data": _data,
                      "beforeSend": function() {

                          }

                          ,
                      error: function(xhr, status, error) {
                          // check status && error
                          console.log(xhr);
                      }


                  }).done(function(response) {
                      showNotification(response);




                      if (response.stat == "success") {

                          setTimeout(function() {
                              window.location.href = '../track_orders';
                          }, 1000);

                      }


                  }).always(function() {

                  });
              }


          } else {


              PNotify.removeAll(); //remove all notifications
              new PNotify({
                  title: 'Error',
                  text: 'We cannot proceed with the order there are no items in cart!',
                  type: 'error'
              });

          }




      });




      function compute() {

          var t_price_per_item = 0,
              t_price_per_item_c = 0;


          $("#list1 tbody .trx").each(function(index) {
              var row = $(this);

              var qty = row.find('.qty');
              var u_price = row.find('.u_price');
              var t_price = row.find('.t_price');
              var td_t_price = row.find('.html-t-price');
              var a = parseInt(qty.val());
              var b = parseInt(u_price.val());



              t_price_per_item += (a * b);

              t_price.val(a * b);
              td_t_price.html(a * b);
          });



          $("#list2 tbody .trx").each(function(index) {
              var row = $(this);

              var qty_c = row.find('.qty_c');
              var u_price_c = row.find('.u_price_c');
              var t_price_c = row.find('.t_price_c');
              var td_t_price_c = row.find('.html-t-price-c');
              var x = parseInt(qty_c.val());
              var y = parseInt(u_price_c.val());

              t_price_per_item_c += (x * y);
              t_price_c.val(x * y);
              td_t_price_c.html(x * y);
          });




          $('#grand_price').val(t_price_per_item + t_price_per_item_c);

          $('#html_grand_price').html(t_price_per_item + t_price_per_item_c);
      }




  });