  $(document).ready(function() {


      load_list();




      var createStructure = function(obj) {

          var tags = "<tr><td>" + obj.customer_id + "</td><td>" + obj.cust_fullname + "</td><td>" + obj.address + "</td><td>" + obj.cust_email + "</td><td>" + obj.contact_no + "</td><td>" + obj.cust_bdate + "</td></tr>"

          $('#list tbody').prepend(tags);
      }


      function load_list() {



          $.ajax({
              dataType: "json",
              type: "POST",
              url: http + 'Customers/transaction/list', //call controller class/function to execute

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