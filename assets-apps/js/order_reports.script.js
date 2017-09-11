  $(document).ready(function() {


      load_list();




      var createStructure = function(obj) {

          var tags = "<tr><td>" + obj.order_id + "</td><td>" + obj.cust_fullname + "</td><td>" + obj.address + "</td><td>" + obj.cust_email + "</td><td>" + obj.contact_no + "</td><td>" + obj.grand_price + "</td><td>" + obj.order_status + "</td><td>" + obj.date_pickedup + "</td><td>" + obj.reference_no + "</td></tr>"

          $('#list tbody').prepend(tags);
      }


      function load_list() {



          $.ajax({
              dataType: "json",
              type: "POST",
              url: http + 'Orders/order_report', //call controller class/function to execute

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

      $('#btn-print').click(function() {


          window.print();
      });
  });