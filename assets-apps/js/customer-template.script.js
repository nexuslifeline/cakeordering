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
            '<a href="../cake_builder"><i class="icon s7-graph"></i><span>Cake Builder</span></a>'+
         '</li>'+

          '<li class="parent">'+
            '<a href="../online_ordering"><i class="icon s7-graph"></i><span>Shop Online</span></a>'+
         '</li>'+
         /*'<li class="parent">'+
            '<a href="../ready_made_cake"><i class="icon s7-graph"></i><span>Ready Made Cake</span></a>'+
         '</li>'+
        
          '<li class="parent">'+
            '<a href="../track_orders"><i class="icon s7-box1"></i><span>Track Custom Orders</span></a>'+
         '</li>'+*/
         
         '<li class="parent">'+
            '<a href="../track_ready_orders"><i class="icon s7-box1"></i><span>Track Ready Made Orders</span></a>'+
         '</li>'+
         

          '<li class="parent">'+
            '<a href="../track_orders"><i class="icon s7-box1"></i><span>Track Orders</span></a>'+
         '</li>'+
           '<li class="parent">'+
            '<a href="../user_graphics"><i class="icon s7-box1"></i><span>User Graphics Management</span></a>'+
         '</li>'+
          '<li class="parent">'+
            '<a href="../profile"><i class="icon s7-box2"></i><span>Profile Setting</span></a>'+
         '</li>'+


      '</ul>'+
   '</div>'+
'</div>';






$('#template').html(html_header);





});


