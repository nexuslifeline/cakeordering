/*
Project      : Cake Ordering System
Version      : v1.0
Author       : Nexus Team

*/

CakeJS = {

	globalVariable : '',

	init: function() {

		var self = this;
		
		//calling all function
		self.initHomeSlider();
		self.initCustomerRegistration();

	},



	initHomeSlider : function() {

		var self = this;
			$("#slider1").revolution({

		        sliderType: "standard",
		        jsFileLocation: "../../revolution/js/",
		        sliderLayout: "fullscreen",
		        dottedOverlay: "none",
		        delay: 9000,
		        
		        navigation: {
		            arrows: {enable: true}
		        },

		        parallax: {
		            type: "on",
		            levels: [5, 10, 15, 20, 25, 30, 35, 40, 45, 50, 55, 60, 65, 70, 75, 80, 85],
		            origo: "enterpoint",
		            speed: 400,
		            bgparallax: "on",
		            disable_onmobile: "off"
		        },

		        gridwidth: 1170,
		        gridheight: 600
		    });
		   
	},


	initCustomerRegistration : function(){
		// Plugin options and our code
		/*$(".modal_trigger").leanModal({
				top: 100,
				overlay: 0.6,
				closeButton: ".modal_close"
		});*/

	
				// Calling Login Form
		$("#login_form").click(function() {

				console.log("hello");
				$('#login_modal').css('display','block');

				$(".social_login").hide();
				$(".user_login").show();
				return false;
		});

		// Calling Register Form
		$("#register_form").click(function() {
				$(".social_login").hide();
				$(".user_register").show();
				$(".header_title").text('Register');
				return false;
		});

		// Going back to Social Forms
		$(".back_btn").click(function() {
				$(".user_login").hide();
				$(".user_register").hide();
				$(".social_login").show();
				$(".header_title").text('Login');
				return false;
		});





	},

}


