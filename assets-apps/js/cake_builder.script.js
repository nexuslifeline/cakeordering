  $(document).ready(function() {
      var layer_id =1;
      var price = 0,step_total_price=0;
		loadCakesLayer();


      $(document).on('click', '.thumb-layer-1,.thumb-layer-2,.thumb-layer-3,.thumb-layer-4,.thumb-layer-5', function() {

          var img = $(this).attr('src');

          price    = $(this).data('price');
          $("#cake-canvas-layer-" + layer_id + " img").attr('src', img);
		
          $("#cake-canvas-layer-" + layer_id + " img").attr('data-layer-price', price );

          computePrice();
      });

      $(document).on('click', '.tool-5,.tool-4,.tool-3,.tool-2,.tool-1', function() {

          layer_id = $(this).data('layer');


          $('#item-container').html('');
          loadCakesLayer();
      });


      $(document).on('click', '.tool-remove', function() {

         $("#cake-canvas-layer-" + layer_id + " img").attr('src','');

         $("#cake-canvas-layer-" + layer_id + " img").attr('data-layer-price', 0 );
         computePrice();
      });


               $("#cake-canvas-layer-4 img , #cake-canvas-layer-5 img ").attr('src','');



      function createStructure(value) {
          var tags = "<div class='col-sm-2 cake-layer-box'><a><img data-price='" + value.price + "'  class='cake-layers thumb-layer-" + layer_id + "' src='" + value.image_path + "' alt='Image' class='img-responsive'></a></div>";
          $('#item-container').append(tags);

      }

      function loadCakesLayer() {



          $.ajax({
              dataType: "json",
              type: "POST",
              url: http + 'Cake_' + layer_id + '/transaction/list', //call controller class/function to execute

              success: function(response) {

                  console.log(response.data);


                  $.each(response.data, function(index, value) {

                      createStructure(value);


                  });

              },
              error: function(xhr, status, error) {
                  // check status && error
                  console.log(xhr);
              }
          });

      }


      function computePrice(){


		var  p1 = parseInt($("#cake-canvas-layer-1 img").attr('data-layer-price'));
		var  p2 = parseInt($("#cake-canvas-layer-2 img").attr('data-layer-price'));
		var  p3 = parseInt($("#cake-canvas-layer-3 img").attr('data-layer-price'));
		var  p4 = parseInt($("#cake-canvas-layer-4 img").attr('data-layer-price'));
		var  p5 = parseInt($("#cake-canvas-layer-5 img").attr('data-layer-price'));
  step_1_total_price = parseInt(p1+p2+p3+p4+p5);

$('#step-1-total-price').html(step_1_total_price);

      }


  });