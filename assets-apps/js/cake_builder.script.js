  $(document).ready(function() {
      var _txnMode;
      var oTable;
      var oSelectedRow;
      var parent_selected = '';

 var dd = '<div class="layer5"><div class="layer-box"><img src="../../assets-apps/img/basecake/base.png" class="img-responsive"></div><div class="decor-box"> <img src="" class="img-responsive decors"> </div></div><div class="layer4"> <div class="layer-box"><img src="../../assets-apps/img/basecake/base.png" class="img-responsive"></div><div class="decor-box"> <img src="" class="img-responsive decors"> </div></div><div class="layer3"> <div class="layer-box"><img src="../../assets-apps/img/basecake/base.png" class="img-responsive"></div><div class="decor-box"> <img src="" class="img-responsive decors"> </div></div><div class="layer2"> <div class="layer-box"><img src="../../assets-apps/img/basecake/base.png" class="img-responsive"></div><div class="decor-box"> <img src="" class="img-responsive decors"> </div></div><div class="layer1"> <div class="layer-box"><img src="../../assets-apps/img/basecake/base.png" class="img-responsive"></div><div class="decor-box"> <img src="" class="img-responsive decors"> </div></div>';




      load_serving_list();
      load_flavor_list();
      load_cake_list();
      load_decaration_list();

      load_topping_list();
      //$('.layer1 img,.layer2 img,.layer3 img,.layer4 img,.layer5 img').hide()


      //*******************************************************************************************************************
      var initializeControls = function() {
          oTable = $('#list').DataTable({
              "dom": '<"toolbar">frtip',
              "bLengthChange": false,
              "ajax": http + "Cake_templates/transaction/list",
              "columns": [

                  {
                      targets: [1],
                      data: "cake_template_id"
                  },
                  {
                      targets: [2],
                      data: "cake_template_name"
                  },
                  {
                      targets: [3],
                      data: "estimated_price"
                  },
                  {
                      targets: [4],
                      data: "actual_price"
                  },

                  {
                      targets: [5],
                      data: "is_verified"
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
              var _btnNew = '<button class="btn btn-info"  id="btn_new" data-toggle="modal" data-target="" data-placement="left" title="Create Cake Templates" >' +
                  '<i class="glyphicon glyphicon-plus"></i> <b>Create Cake Templates</b></button>';
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
              $('#modal_form').modal('show');
              $('.date-picker').val("");
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
              var c = oTable.row(oSelectedRow).data();
              $.ajax({
                  "dataType": "json",
                  "type": "POST",
                  "url": http + "Cake_templates/transaction/delete",
                  "data": [{
                      name: "cake_template_id",
                      value: c.cake_template_id
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

                 $('.front_view').html(data.front_view);
                              $('.rear_view').html(data.rear_view);

              $('#modal_form').modal('show');

          });


      

      }();


$('#select_tops').on('change', function(e) {
          var optionSelected = $("option:selected", this);
             var valueSelected = this.value;

             if(valueSelected==1){
                 $('#topping-container').html('');
                 load_topping_list();

             }else if(valueSelected==2){
              $('#topping-container').html('');
                load_user_graphics_list();
             }else{

             }  



      });

      $('#serving_details').on('change', function(e) {
          var optionSelected = $("option:selected", this);
          var valueSelected = this.value;
          var no_layer = optionSelected.data('layers');

          if (no_layer == 1) {

              $('.layer2 img,.layer3 img,.layer4 img,.layer5 img').hide();
              $('.layer1 img').show()


              $('.tool-2,.tool-3,.tool-4,.tool-5').hide();
              $('.tool-1').show()
          } else if (no_layer == 2) {
              $('.layer3 img,.layer4 img,.layer5 img').hide();
              $('.layer1 img,.layer2 img').show();


              $('.tool-3,.tool-4,.tool-5').hide();
              $('.tool-1,.tool-2').show();

          } else if (no_layer == 3) {

              $('.layer4 img,.layer5 img').hide();
              $('.layer1 img,.layer2 img,.layer3 img').show();

              $('.tool-4,.tool-5').hide();
              $('.tool-1,.tool-2,.tool-3').show();
          } else if (no_layer == 4) {

              $('.layer5 img').hide();
              $('.layer1 img,.layer2 img,.layer3 img,.layer4 img').show();

              $('.tool-5').hide();
              $('.tool-1,.tool-2,.tool-3,.tool-4').show();
          } else if (no_layer == 5) {

              $('.layer1 img,.layer2 img,.layer3 img,.layer4 img,.layer5 img').show();
              $('.tool-1,.tool-2,.tool-3,.tool-4,.tool-5').show();

          } else {

              $('.layer1 img,.layer2 img,.layer3 img,.layer4 img,.layer5 img').hide();
              $('.tool-1,.tool-2,.tool-3,.tool-4,.tool-5').show();

          }

      });




      var servingStructure = function(obj) {

          var tags = "<option data-layers=" + obj.layers + ">" + obj.layers + " - Layer | Size :  " + obj.size + " | " + obj.serving_description + "</option";

          $('#serving_details').prepend(tags);
      }




      var flavorStructure = function(obj) {

          var tags = "<option value=" + obj.flavor_name + ">" + obj.flavor_name + "</option";

          $('#flavor_details').append(tags);
      }



      function layerStructure(value) {
          var tags = "<div class='col-lg-4'><div class='cake-box'><a class='cake-thumbs' title='" + value.cake_description + "'><img  src='" + value.image_path + "'  class='img-responsive'></a><h5> " + value.cake_name + "</h5><h6> " + value.price + "</h6></div></div>";
          $('#layer-container').append(tags);

      }



      function decorStructure(value) {
          var tags = "<div class='col-lg-4'><div class='decor-holder'><a class='decor-thumbs' title='" + value.side_decoration_description + "'><img  src='" + value.image_path + "'  class='img-responsive'></a><h5> " + value.side_decoration_name + "</h5><h6> " + value.price + "</h6></div></div>";
          $('#decor-container').append(tags);

      }

  function topStructure(value) {
          var tags = "<div class='col-lg-4'><div class='topping-box'><a class='topping-thumbs' title='" + value.topping_description + "'><img  src='" + value.image_path + "'  class='img-responsive'></a><h5> " + value.topping_name + "</h5><h6> " + value.price + "</h6></div></div>";
          $('#topping-container').append(tags);

      }



      function usergrap_Structure(value) {
          var tags = "<div class='col-lg-4'><div class='topping-box'><a class='topping-thumbs' title='" + value.graphic_description + "'><img  src='" + value.image_path + "'  class='img-responsive'></a><h5> " + value.graphic_name + "</h5><h6> " + value.price + "</h6></div></div>";
          $('#topping-container').append(tags);

      }


       



      function load_serving_list() {



          $.ajax({
              dataType: "json",
              type: "POST",
              url: http + 'Servings/transaction/list', //call controller class/function to execute

              success: function(response) {

                  console.log(response.data);


                  $.each(response.data, function(index, value) {

                      servingStructure(value);


                  });

              },
              error: function(xhr, status, error) {
                  // check status && error
                  console.log(xhr);
              }
          });

      }




      function load_flavor_list() {



          $.ajax({
              dataType: "json",
              type: "POST",
              url: http + 'Flavors/transaction/list', //call controller class/function to execute

              success: function(response) {

                  console.log(response.data);


                  $.each(response.data, function(index, value) {

                      flavorStructure(value);


                  });

              },
              error: function(xhr, status, error) {
                  // check status && error
                  console.log(xhr);
              }
          });

      }




      function load_cake_list() {



          $.ajax({
              dataType: "json",
              type: "POST",
              url: http + 'Cake_1/transaction/list', //call controller class/function to execute

              success: function(response) {

                  console.log(response.data);


                  $.each(response.data, function(index, value) {

                      layerStructure(value);


                  });

              },
              error: function(xhr, status, error) {
                  // check status && error
                  console.log(xhr);
              }
          });

      }



      function load_decaration_list() {



          $.ajax({
              dataType: "json",
              type: "POST",
              url: http + 'Side_decorations/transaction/list', //call controller class/function to execute

              success: function(response) {

                  console.log(response.data);


                  $.each(response.data, function(index, value) {

                      decorStructure(value);


                  });

              },
              error: function(xhr, status, error) {
                  // check status && error
                  console.log(xhr);
              }
          });

      }



      function load_topping_list() {



          $.ajax({
              dataType: "json",
              type: "POST",
              url: http + 'Toppings/transaction/list', //call controller class/function to execute

              success: function(response) {

                  console.log(response.data);


                  $.each(response.data, function(index, value) {

                      topStructure(value);


                  });

              },
              error: function(xhr, status, error) {
                  // check status && error
                  console.log(xhr);
              }
          });

      }



      function load_user_graphics_list() {



          $.ajax({
              dataType: "json",
              type: "POST",
              url: http + 'User_graphics/transaction/list', //call controller class/function to execute

              success: function(response) {

                  console.log(response.data);


                  $.each(response.data, function(index, value) {

                      usergrap_Structure(value);


                  });

              },
              error: function(xhr, status, error) {
                  // check status && error
                  console.log(xhr);
              }
          });

      }



      $(document).on('click', '.cake-thumbs', function() {

          var img = $(this).find('img').attr('src');




          $('.selected  .layer-box img').attr('src', img);

      });




      $(document).on('click', '.decor-thumbs', function() {

          var img = $(this).find('img').attr('src');




          $('.selected .decor-box img').attr('src', img);

      });




      $(document).on('click', '.topping-thumbs', function() {

          var img = $(this).find('img').attr('src');

          var clone = "<a class='dg' style='position:absolution;z-index:999'><img  height='50px' src=" + img + "></a>"


          $(parent_selected).prepend(clone);
          $(".dg").draggable().css("position", "absolute");


      });




      $('.fview-selector').click(function() {
          parent_selected = ".front_view";
          $('.rview-selector').removeClass('btn-selected')
          $(this).addClass('btn-selected');

      });


      $('.rview-selector').click(function() {
          parent_selected = ".rear_view";
          $('.fview-selector').removeClass('btn-selected')

          $(this).addClass('btn-selected');

      });


      $('.fvs-layer-1').click(function() {

          $('.layer1, .layer2,.layer3,.layer4, .layer5').removeClass('selected');
          $('.front_view  .layer1').addClass('selected');
          $('.btn').removeClass('btn-selected');
          $(this).addClass('btn-selected');

      });

      $('.fvs-layer-2').click(function() {

          $('.layer1, .layer2,.layer3,.layer4, .layer5').removeClass('selected');;
          $('.front_view  .layer2').addClass('selected');



          $('.btn').removeClass('btn-selected');
          $(this).addClass('btn-selected');
      });




      $('.fvs-layer-3').click(function() {

          $('.layer1, .layer2,.layer3,.layer4, .layer5').removeClass('selected');
          $('.front_view  .layer3').addClass('selected');
          $('.btn').removeClass('btn-selected');
          $(this).addClass('btn-selected');

      });




      $('.fvs-layer-4').click(function() {

          $('.layer1, .layer2,.layer3,.layer4, .layer5').removeClass('selected');
          $('.front_view  .layer4').addClass('selected');
          $('.btn').removeClass('btn-selected');
          $(this).addClass('btn-selected');

      });


      $('.fvs-layer-5').click(function() {

          $('.layer1, .layer2,.layer3,.layer4, .layer5').removeClass('selected');
          $('.front_view  .layer5').addClass('selected');
          $('.btn').removeClass('btn-selected');
          $(this).addClass('btn-selected');

      });




      $('.rvs-layer-1').click(function() {

          $('.layer1, .layer2,.layer3,.layer4, .layer5').removeClass('selected');
          $('.rear_view  .layer1').addClass('selected');
          $('.btn').removeClass('btn-selected');
          $(this).addClass('btn-selected');

      });




      $('.rvs-layer-2').click(function() {

          $('.layer1, .layer2,.layer3,.layer4, .layer5').removeClass('selected');
          $('.rear_view  .layer2').addClass('selected');
          $('.btn').removeClass('btn-selected');
          $(this).addClass('btn-selected');

      });


      $('.rvs-layer-3').click(function() {

          $('.layer1, .layer2,.layer3,.layer4, .layer5').removeClass('selected');
          $('.rear_view  .layer3').addClass('selected');
          $('.btn').removeClass('btn-selected');
          $(this).addClass('btn-selected');

      });



      $('.rvs-layer-4').click(function() {

          $('.layer1, .layer2,.layer3,.layer4, .layer5').removeClass('selected');
          $('.rear_view  .layer4').addClass('selected');
          $('.btn').removeClass('btn-selected');
          $(this).addClass('btn-selected');

      });


      $('.rvs-layer-5').click(function() {

          $('.layer1, .layer2,.layer3,.layer4, .layer5').removeClass('selected');
          $('.rear_view  .layer5').addClass('selected');
          $('.btn').removeClass('btn-selected');
          $(this).addClass('btn-selected');

      });



      $('.clear').click(function() {

          $('.layer1, .layer2,.layer3,.layer4, .layer5').removeClass('selected');

          $('.btn').removeClass('btn-selected');
          parent_selected = '';
      });

      /*
            $('.layer1,.layer2,.layer3,.layer4,.layer5').click(function() {
                $('.layer1,.layer2,.layer3,.layer4,.layer5').removeClass('selected');
                $(this).addClass('selected');
            })
      */
      var tabselected = $('.steps').find('.active');


      $('.wizard-previous,.wizard-next').click(function() {




      });











    //save
          $('#btn_save_record').click(function() {
              var btn = $(this);
              var f = $('#frm_data');

              if (validateRequiredFields(f)) {

                  var _data = f.serializeArray(); //serialize data in array format






              _data.push({
                  name: "customer_id",
                  value: localStorage.customer_id
              });


              _data.push({
                  name: "front_view",
                  value: $('.front_view').html()
              });

                  _data.push({
                  name: "rear_view",
                  value: $('.rear_view').html()
              });

               _data.push({
                  name: "serving_details",
                  value: $('#serving_details option:selected').val()
              });



                  if (_txnMode == "new") {
                      //save new card info
                      $.ajax({
                          "dataType": "json",
                          "type": "POST",
                          "url": http + "Cake_templates/transaction/create",
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
                              $('.front_view').html(dd);
                              $('.rear_view').html(dd);

                               $('.clear').click();
                          }

                      }).always(function() {
                          //  showSpinningProgress(btn);
                      });
                  } else {

                      var c = oTable.row(oSelectedRow).data();
                      _data.push({
                          name: "cake_template_id",
                          value: c.cake_template_id
                      });
                      $.ajax({
                          "dataType": "json",
                          "type": "POST",
                          "url": http + "Cake_templates/transaction/update",
                          "data": _data,
                          "beforeSend": function() {
                                  //showSpinningProgress(btn);
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
                          // showSpinningProgress(btn);
                      });
                  }


              }
          });














  });