$(function(){




var html_header = '<nav class="navbar navbar-default navbar-fixed-top am-top-header">'+
   '<div class="container-fluid">'+
      '<div class="navbar-header">'+
         '<div class="page-title"><span>Cake Ordering System</span></div>'+
         '<a href="#" class="am-toggle-left-sidebar navbar-toggle collapsed"><span class="icon-bar"><span></span><span></span><span></span></span></a><a href="#" class="navbar-brand"></a>'+
    '</div>'+
      '<a href="#" data-toggle="collapse" data-target="#am-navbar-collapse" class="am-toggle-top-header-menu collapsed"><span class="icon s7-angle-down"></span></a>'+
      '<div id="am-navbar-collapse" class="collapse navbar-collapse">'+
        '<ul class="nav navbar-nav navbar-right am-user-nav">'+
            '<li class="dropdown">'+
               '<a href="#" data-toggle="dropdown" role="button" aria-expanded="false" class="dropdown-toggle"><img src="../../assets-apps/img/anonymous-icon.png" id="main-photo"><span class="user-name" id="main-fullname"></span><span class="angle-down s7-angle-down"></span></a>'+
               '<ul role="menu" class="dropdown-menu">'+
                  '<li><a href="../profile"> <span class="icon s7-user"></span>My profile</a></li>'+
                  '<li><a href="#" id="btn-sign-out"> <span class="icon s7-power"></span>Sign Out</a></li>'+
               '</ul>'+
            '</li>'+
         '</ul>'+
      '</div>'+
   '</div>'+
'</nav>'+
'<div class="am-left-sidebar">'+
   '<div class="content">'+
      '<div class="am-logo"></div>'+
      '<ul class="sidebar-elements">'+
         '<li class="parent"><a href="../dashboard"><i class="icon s7-monitor"></i><span>Dashboard</span></a>'+
         '</li>'+
         '<li class="parent">'+
            '<a href="#"><i class="icon s7-graph"></i><span>Transactions</span></a>'+
            '<ul class="sub-menu">'+
             /*  '<li><a href="../orders">Custom Cake Orders</a>'+
               '</li>'+
                '<li><a href="../ready_made_orders">Ready Made Cake Orders</a>'+
               '</li>'+*/
                 '<li><a href="../cake_assessment">Cake Assessment</a>'+
               '</li>'+
                '<li><a href="../process_orders">Process Orders</a>'+
               '</li>'+
            '</ul>'+
         '</li>'+
         '<li class="parent">'+
            '<a href="#"><i class="icon s7-ribbon"></i><span>Management</span></a>'+
            '<ul class="sub-menu">'+
               '<li><a href="../users">User Management</a>'+
               '</li>'+
               '<li><a href="../customers">Customer Management</a>'+
               '</li>'+
                '<li><a href="../category">Category Management</a>'+
               '</li>'+
               '<li><a href="../cake">Cake Layer  Management</a>'+
               '</li>'+
              /*'<li><a href="../cake1">Cake Layer  Management</a>'+
               '</li>'+
                '<li><a href="../cake2">Cake Layer 2 Management</a>'+
               '</li>'+
                '<li><a href="../cake3">Cake Layer 3 Management</a>'+
               '</li>'+
                '<li><a href="../cake4">Cake Layer 4 Management</a>'+
               '</li>'+
                '<li><a href="../cake5">Cake Layer 5 Management</a>'+*/
               '</li>'+
                '<li><a href="../topping">Toppings Management</a>'+
               '</li>'+
               '<li><a href="../side_decoration">Decoration Management</a>'+
               '</li>'+
                '<li><a href="../flavors">Flavor Management</a>'+
               '</li>'+
                '<li><a href="../ready_cake">Existing Cake Design Management</a>'+
               '</li>'+

               '<li><a href="../serving">Size and Serving Management</a>'+
               '</li>'+
               '<li><a href="../agreement">Agreement Management</a>'+
               '</li>'+
                
            '</ul>'+
         '</li>'+
        ' <li class="parent">'+
            '<a href="#"><i class="icon s7-box2"></i><span>Setting</span></a>'+
           '<ul class="sub-menu">'+
               '<li><a href="../profile">User Profile</a>'+
              '</li>'+
           '</ul>'+
         '</li>'+
        /* '<li class="parent">'+
            '<a href="#"><i class="icon s7-box2"></i><span>System</span></a>'+
            '<ul class="sub-menu">'+
             
               '<li><a href="../config">Configuration</a>'+
               '</li>'+
            '</ul>'+
         '</li>'+*/
         '<li class="parent">'+
            '<a href="#"><i class="icon s7-box2"></i><span>Reports</span></a>'+
            '<ul class="sub-menu">'+
               '<li><a href="../customer_reports">Customer Reports</a>'+
               '</li>'+
               '<li><a href="../order_reports">Order Reports</a>'+
               '</li>'+
            '</ul>'+
         '</li>'+
      '</ul>'+
   '</div>'+
'</div>';






$('#template').html(html_header);








});


