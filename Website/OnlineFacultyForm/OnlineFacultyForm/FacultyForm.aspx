<%@ Page Language="C#" AutoEventWireup="True" MaintainScrollPositionOnPostBack="true" Inherits="OnlineFacultyForm.FacultyForm" CodeFile="FacultyForm.aspx.cs" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
   <head runat="server">
      <link rel="stylesheet" type="text/css" href="NewCSS.css" media="all" />
      <meta charset="utf-8"/>
      <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
      <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
      <meta name="generator" content="WordPress 3.6.1" />
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
      <title>International Profile</title>
      <link rel="canonical" href="http://international.gsu.edu/"/>
      <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css" />
      <script src="//code.jquery.com/jquery-1.10.2.js"></script>
      <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
      <script src="http://ajax.aspnetcdn.com/ajax/jquery/jquery-1.5.1.js" type="text/javascript"></script>
      <script src="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.10/jquery-ui.js" type="text/javascript"></script>
      <link href="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.10/themes/redmond/jquery-ui.css" rel="stylesheet" type="text/css" />
      <link rel="stylesheet" href="/resources/demos/style.css"/>
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
      <script language="javascript" type="text/javascript">
          function ShowHideDivOnButtonClicktest1() {
              $('#contact').toggleClass('active');
              $('#facultyContact').slideToggle(500);
          }
      </script> 
      <script language="javascript" type="text/javascript">
          function ShowHideDivOnButtonClicktest2() {
              $('#researchExpertise').toggleClass('active');
              $('#research').slideToggle(500);
          }
      </script>
       <script type="text/javascript">
           $(function () {
               var f = $("#<%=hfPosition.ClientID%>");
        window.onload = function () {
            var position = parseInt(f.val());
            if (!isNaN(position)) {
                $(window).scrollTop(position);
            }
        };
        window.onscroll = function () {
            var position = $(window).scrollTop();
            f.val(position);
        };
    });
       </script>
      <script language="javascript" type="text/javascript">
          function ShowHideDivOnButtonClicktest3() {
              $('#relevantCourses').toggleClass('active');
              $('#courses').slideToggle(500);
          }
      </script>
      <script language="javascript" type="text/javascript">
          function ShowHideDivOnButtonClicktest4() {
              $('#facultySnapshot').toggleClass('active');
              $('#faculty').slideToggle(500);
          }
      </script> 
      <script language="javascript" type="text/javascript">
          function ShowHideDivOnButtonClicktest5() {
              $('#biog').toggleClass('active');
              $('#biography').slideToggle(500);
          }
      </script>
      </script> 
      <script language="javascript" type="text/javascript">
          function ShowHideDivOnButtonClicktest6() {
              $('#honors').toggleClass('active');
              $('#awards').slideToggle(500);
          }
      </script>
      </script> 
      <script language="javascript" type="text/javascript">
          function ShowHideDivOnButtonClicktest7() {
              $('#sponsoredProjects').toggleClass('active');
              $('#majorProjects').slideToggle(500);
          }
      </script>
      <script language="javascript" type="text/javascript">
          function ShowHideDivOnButtonClicktest8() {
              $('#projects').toggleClass('active');
              $('#researchProjects').slideToggle(500);
          }
      </script>
      <script language="javascript" type="text/javascript">
          function ShowHideDivOnButtonClicktest9() {
              $('#lectures').toggleClass('active');
              $('#recentLectures').slideToggle(500);
          }
      </script>
      <script language="javascript" type="text/javascript">
          function ShowHideDivOnButtonClicktest10() {
              $('#associations').toggleClass('active');
              $('#internationalAssociations').slideToggle(500);
          }
      </script>
      <script language="javascript" type="text/javascript">
          function ShowHideDivOnButtonClicktest12() {
              $('#agreements').toggleClass('active');
              $('#currentAgreements').slideToggle(500);
          }
      </script>
      <script language="javascript" type="text/javascript">
          function ShowHideDivOnButtonClicktest13() {
              $('#keywords_HyperLink').toggleClass('active');
              $('#keywords').slideToggle(500);
          }
      </script>
      <script language="javascript" type="text/javascript">
          function ShowHideDivOnButtonClicktest14() {
              $('#education').toggleClass('active');
              $('#highestEducation').slideToggle(500);
          }
      </script>
      <script language="javascript" type="text/javascript">
          function ShowHideDivOnButtonClicktest15() {
              $('#languages').toggleClass('active');
              $('#spokenLanguages').slideToggle(500);
          }
      </script>
      <script type="text/javascript">  
          $(document).ready(function () {
              $(document).on("click", ".addSpokenLangBtn", function () {
                  var rowCount = $('.spokenLangRow').length + 1;
                  var spokenLang = '<tr class="spokenLangRow">' +
                      '<td><input type="text" name="f-name' + rowCount + '" class="form-control f-name01" /></td>' +
                      '<td><input type="text" name="l-name' + rowCount + '" class="form-control l-name01" /></td>' +
                      '<td><input type="text" name="email' + rowCount + '" class="form-control email01" /></td>' +
                      '<td><button type="button" id="btnAdd" class="classAdd">Add More</button>' +
                      '<button type="button" id="btnDelete" class="classDelete btn btn btn-danger btn-xs">Remove</button></td>' +
                      '</tr>';
                  '<td><asp:TextBox ID="language10" style="margin-top:2px; margin-bottom:2px; width:100%;"  placeholder="Spoken Language"></asp:TextBox></td>' +
                      '<td>' +
                      '<asp:DropDownList id = "fluency10" AutoPostBack = "false" style = "margin-bottom:0px;"><asp:ListItem Selected="True" disabled> Fluency in the language </asp:ListItem><asp:ListItem Value="1"> 1 </asp:ListItem><asp:ListItem Value="2"> 2 </asp:ListItem><asp:ListItem Value="3"> 3 </asp:ListItem><asp:ListItem Value="4"> 4 </asp:ListItem><asp:ListItem Value="5"> 5 </asp:ListItem></asp:DropDownList>' +
                      '</td>' +

                      '<td>' +
                      '<asp:TextBox ID="language20" style="margin-top:2px; margin-bottom:2px; width:100%"  placeholder="Spoken Language"></asp:TextBox>' +
                      '</td>' +

                      '<td><asp:DropDownList id="fluency20" AutoPostBack="false" style="margin-bottom:0px;"><asp:ListItem Selected="True" disabled> Fluency in the language </asp:ListItem><asp:ListItem Value="1"> 1 </asp:ListItem><asp:ListItem Value="2"> 2 </asp:ListItem><asp:ListItem Value="3"> 3 </asp:ListItem><asp:ListItem Value="4"> 4 </asp:ListItem><asp:ListItem Value="5"> 5 </asp:ListItem></asp:DropDownList></td>'
                  $('.spokenLangTable').append(spokenLang); // Adding these controls to Main table class  
              });
          });
      </script> 
      <style>
         .alert-link{color:#0039A6}@-webkit-keyframes progress-bar-stripes{from{background-position:40px 0}to{background-position:0 0}}@-o-keyframes progress-bar-stripes{from{background-position:40px 0}to{background-position:0 0}}@keyframes progress-bar-stripes{from{background-position:40px 0}to{background-position:0 0}}.progress{height:20px;margin-bottom:20px;overflow:hidden;background-color:#f5f5f5;border-radius:4px;-webkit-box-shadow:inset 0 1px 2px rgba(0,0,0,.1);box-shadow:inset 0 1px 2px rgba(0,0,0,.1)}.progress-bar{float:left;width:0;height:100%;font-size:12px;line-height:20px;color:#fff;text-align:center;background-color:#0039A6;-webkit-box-shadow:inset 0 -1px 0 rgba(0,0,0,.15);box-shadow:inset 0 -1px 0 rgba(0,0,0,.15);-webkit-transition:width .6s ease;-o-transition:width .6s ease;transition:width .6s ease}.progress-bar-striped,.progress-striped .progress-bar{background-image:-webkit-linear-gradient(45deg,rgba(255,255,255,.15) 25%,transparent 25%,transparent 50%,rgba(255,255,255,.15) 50%,rgba(255,255,255,.15) 75%,transparent 75%,transparent);background-image:-o-linear-gradient(45deg,rgba(255,255,255,.15) 25%,transparent 25%,transparent 50%,rgba(255,255,255,.15) 50%,rgba(255,255,255,.15) 75%,transparent 75%,transparent);background-image:linear-gradient(45deg,rgba(255,255,255,.15) 25%,transparent 25%,transparent 50%,rgba(255,255,255,.15) 50%,rgba(255,255,255,.15) 75%,transparent 75%,transparent);-webkit-background-size:40px 40px;background-size:40px 40px}.progress-bar.active,.progress.active .progress-bar{-webkit-animation:progress-bar-stripes 2s linear infinite;-o-animation:progress-bar-stripes 2s linear infinite;animation:progress-bar-stripes 2s linear infinite}.progress-bar-success{background-color:#5cb85c}.progress-striped .progress-bar-success{background-image:-webkit-linear-gradient(45deg,rgba(255,255,255,.15) 25%,transparent 25%,transparent 50%,rgba(255,255,255,.15) 50%,rgba(255,255,255,.15) 75%,transparent 75%,transparent);background-image:-o-linear-gradient(45deg,rgba(255,255,255,.15) 25%,transparent 25%,transparent 50%,rgba(255,255,255,.15) 50%,rgba(255,255,255,.15) 75%,transparent 75%,transparent);background-image:linear-gradient(45deg,rgba(255,255,255,.15) 25%,transparent 25%,transparent 50%,rgba(255,255,255,.15) 50%,rgba(255,255,255,.15) 75%,transparent 75%,transparent)}.progress-bar-info{background-color:#5bc0de}.progress-striped .progress-bar-info{background-image:-webkit-linear-gradient(45deg,rgba(255,255,255,.15) 25%,transparent 25%,transparent 50%,rgba(255,255,255,.15) 50%,rgba(255,255,255,.15) 75%,transparent 75%,transparent);background-image:-o-linear-gradient(45deg,rgba(255,255,255,.15) 25%,transparent 25%,transparent 50%,rgba(255,255,255,.15) 50%,rgba(255,255,255,.15) 75%,transparent 75%,transparent);background-image:linear-gradient(45deg,rgba(255,255,255,.15) 25%,transparent 25%,transparent 50%,rgba(255,255,255,.15) 50%,rgba(255,255,255,.15) 75%,transparent 75%,transparent)}.progress-bar-warning{background-color:#f0ad4e}.progress-striped .progress-bar-warning{background-image:-webkit-linear-gradient(45deg,rgba(255,255,255,.15) 25%,transparent 25%,transparent 50%,rgba(255,255,255,.15) 50%,rgba(255,255,255,.15) 75%,transparent 75%,transparent);background-image:-o-linear-gradient(45deg,rgba(255,255,255,.15) 25%,transparent 25%,transparent 50%,rgba(255,255,255,.15) 50%,rgba(255,255,255,.15) 75%,transparent 75%,transparent);background-image:linear-gradient(45deg,rgba(255,255,255,.15) 25%,transparent 25%,transparent 50%,rgba(255,255,255,.15) 50%,rgba(255,255,255,.15) 75%,transparent 75%,transparent)}.progress-bar-danger{background-color:#d9534f}.progress-striped .progress-bar-danger{background-image:-webkit-linear-gradient(45deg,rgba(255,255,255,.15) 25%,transparent 25%,transparent 50%,rgba(255,255,255,.15) 50%,rgba(255,255,255,.15) 75%,transparent 75%,transparent);background-image:-o-linear-gradient(45deg,rgba(255,255,255,.15) 25%,transparent 25%,transparent 50%,rgba(255,255,255,.15) 50%,rgba(255,255,255,.15) 75%,transparent 75%,transparent);background-image:linear-gradient(45deg,rgba(255,255,255,.15) 25%,transparent 25%,transparent 50%,rgba(255,255,255,.15) 50%,rgba(255,255,255,.15) 75%,transparent 75%,transparent)}
         .accordion {
         background-color: #eee;
         color: #444;
         cursor: pointer;
         padding: 18px;
         border: none;
         text-align: left;
         outline: none;
         font-size: 15px;
         transition: 0.4s;
         }
         .accordion.active,    .accordion:hover, .accordion:hover::after {
         background-color:#0039A6;
         color:white;
         }
         .accordion::after{
         content: '\002B';
         color: #777;
         font-weight: bold;
         float: right;
         font-size:large;
         margin-left: 5px;
         }
         .accordion.active::after {
         content: "\2212";
         color:white;
         }
         #mask {
         position: absolute;
         left: 0;
         top: 0;
         z-index: 9000;
         background-color: #000;
         display: none;
         }
         #boxes .window {
         position: absolute;
         left: 0;
         top: 0;
         width: 440px;
         height: 200px;
         display: none;
         z-index: 9999;
         padding: 20px;
         border-radius: 15px;
         text-align: center;
         }
         #boxes #dialog {
         width: 750px;
         height: 310px;
         padding: 10px;
         background-color:rgba(0,0,0,0.2);
         font-size: 15pt;
         color:white;
         }
         #popupfoot {
         font-size: 16pt;
         position: absolute;
         bottom: 0px;
         width: 250px;
         left: 250px;
         }
      </style>
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
      <script type="application/javascript" async="" defer="" src="https://by.uservoice.com/t/140779/x/p/2gPcYS1p1pfGCdZ8/track.js?_=1425924604219&amp;s=1&amp;c=__uvSessionData0&amp;d=eyJlIjp7InUiOiJodHRwOi8vaW50ZXJuYXRpb25hbC5nc3UuZWR1LyIsInIiOiIifX0%3D"></script><script src="https://apis.google.com/_/scs/apps-static/_/js/k=oz.gapi.en.LKl5DON_RpU.O/m=auth/exm=plusone/rt=j/sv=1/d=1/ed=1/am=AQ/rs=AGLTcCP73vpxuWxSB9y59GFMQTOP6reZ-Q/t=zcms/cb=gapi.loaded_1" async=""></script><script type="text/javascript" async="" src="http://widget.uservoice.com/dgWy8gxgjDiTklapIwq6rg.js"></script><script id="facebook-jssdk" src="//connect.facebook.net/en_US/all.js#xfbml=1&amp;appId=302092436517453"></script><script id="twitter-wjs" src="//platform.twitter.com/widgets.js"></script><script type="text/javascript" async="" src="http://stats.g.doubleclick.net/dc.js"></script><script src="https://apis.google.com/_/scs/apps-static/_/js/k=oz.gapi.en.LKl5DON_RpU.O/m=plusone/rt=j/sv=1/d=1/ed=1/am=AQ/rs=AGLTcCP73vpxuWxSB9y59GFMQTOP6reZ-Q/t=zcms/cb=gapi.loaded_0" async=""></script><script type="text/javascript" src="http://international.gsu.edu/wp-content/cache/minify/000086/fcpBDoAgDADBD9kQ44uwVCwBigVD_L2SePLgdXcWE46T9Jpmk8ixBa_sTKhmU8mNshvDcsSdU4HOzlMb-9sgcX5oL1AF2UZoInG1CkVleBSlisql1T_2khs.js"></script>
      <script type="text/javascript" src="https://apis.google.com/js/plusone.js?ver=3.5.1" gapi_processed="true"></script>
      <link rel="EditURI" type="application/rsd+xml" title="RSD" href="http://international.gsu.edu/xmlrpc.php?rsd" />
      <link rel="wlwmanifest" type="application/wlwmanifest+xml" href="http://international.gsu.edu/wp-includes/wlwmanifest.xml" />
      <meta name="generator" content="GSU Network" />
      <link rel="shortlink" href="http://beta.international.gsu.edu/?page_id=6" />
      <style type="text/css">
         .fve-video-wrapper {
         position: relative;
         overflow: hidden;
         height: 0;
         background-color: transparent;
         padding-bottom: 56.25%; /* This is default, but will be overriden */
         margin: 0.5em 0; /* A bit of margin at the bottom */
         }
         .fve-video-wrapper iframe,
         .fve-video-wrapper object,
         .fve-video-wrapper embed {
         position: absolute;
         display: block;
         top: 0;
         left: 0;
         width: 100%;
         height: 100%;
         }
         .fve-video-wrapper a.hyperlink-image {
         position: relative;
         display: none;
         }
         .fve-video-wrapper a.hyperlink-image img {
         position: relative;
         z-index: 2;
         width: 100%;
         }
         .fve-video-wrapper a.hyperlink-image .fve-play-button {
         position: absolute;
         left: 35%;
         top: 35%;
         right: 35%;
         bottom: 35%;
         z-index: 3;
         background-color: rgba(40, 40, 40, 0.75);
         background-size: 100% 100%;
         border-radius: 10px;
         }
         .right_align { padding-left:20px;padding-right:20px; text-align: justify;display:grid }
         .left_align { text-align: center;display:grid }
         .fve-video-wrapper a.hyperlink-image:hover .fve-play-button {
         background-color: rgba(0, 0, 0, 0.85);
         }
         .rainbow {
         background-image: -webkit-gradient( linear, left top, right top, color-stop(0, #f22), color-stop(0.15, #f2f), color-stop(0.3, #22f), color-stop(0.45, #2ff), color-stop(0.6, #2f2),color-stop(0.75, #2f2), color-stop(0, #ff2), color-stop(0, #f22) );
         background-image: gradient( linear, left top, right top, color-stop(0, #f22), color-stop(0.15, #f2f), color-stop(0.3, #22f), color-stop(0.45, #2ff), color-stop(0.6, #2f2),color-stop(0.75, #2f2), color-stop(0.9, #ff2), color-stop(1, #f22) );
         color:transparent;
         -webkit-background-clip: text;
         background-clip: text;
         }
         /* End of standard styles */
      </style>
      <style type="text/css" media="screen">
         .printfriendly {
         margin: 12px 12px 12px 12px;
         }
         .printfriendly a, div.printfriendly a:link, div.printfriendly a:visited {
         text-decoration: none;
         font-size: 14px;
         color: #6D9F00;
         vertical-align: bottom;
         border: none;
         }
         .printfriendly a:hover {
         cursor: pointer;
         }
         .printfriendly a img  {
         border: none;
         padding:0;
         margin-right: 6px;
         display:inline-block;
         box-shadow: none;
         -webkit-box-shadow: none;
         -moz-box-shadow: none;
         }
         .printfriendly a span{
         vertical-align: bottom;
         }
         .pf-alignleft {
         float: left;
         }
         .pf-alignright {
         float: right;
         }
         div.pf-aligncenter {
         display: block;
         margin-left: auto;
         margin-right: auto;
         text-align: center;
         }
      </style>
      <style type="text/css" media="print">
         .printfriendly {
         display: none;
         }
         .HyperLink1{
         padding: 14px 25px;text-align: center;text-decoration: none;display: inline-block;
         }
         .HyperLink2{
         padding: 14px 25px;text-align: center;text-decoration: none;display: inline-block;
         }
         .confirm_selection {
         -webkit-transition: text-shadow 1s linear;
         -moz-transition: text-shadow 1s linear;
         -ms-transition: text-shadow 1s linear;
         -o-transition: text-shadow 1s linear;
         transition: text-shadow 1s linear;
         }
         .confirm_selection:hover,
         .confirm_selection.glow {
         text-shadow: 0 0 10px red;
         }
      </style>
      <link rel="shortcut icon" href="http://international.gsu.edu/wp-content/themes/gsu-core/favicon.ico" />
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
      <script type="text/javascript" src="http://international.gsu.edu/wp-content/cache/minify/000086/M9BPLy7VTc4vStXPKtbPzU9JLcrLrCrSy83MAwA.js"></script>
      <link href="http://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css" />
      <link href="http://fonts.googleapis.com/css?family=EB+Garamond" rel="stylesheet" type="text/css" />
      <link rel="pingback" href="http://international.gsu.edu/xmlrpc.php" />
      <script type="text/javascript" src="http://cdn.printfriendly.com/printfriendly.js"></script>
      <style type="text/css">
         .fb_hidden{position:absolute;top:-10000px;z-index:10001}
         .fb_invisible{display:none}
         .fb_reset{background:none;border:0;border-spacing:0;color:#000;cursor:auto;direction:ltr;font-family:"lucida grande", tahoma, verdana, arial, sans-serif;font-size:11px;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;line-height:1;margin:0;overflow:visible;padding:0;text-align:left;text-decoration:none;text-indent:0;text-shadow:none;text-transform:none;visibility:visible;white-space:normal;word-spacing:normal}.fb_reset>div{overflow:hidden}.fb_link img{border:none}
         .fb_dialog{background:rgba(82, 82, 82, .7);position:absolute;top:-10000px;z-index:10001}.fb_reset .fb_dialog_legacy{overflow:visible}.fb_dialog_advanced{padding:10px;-moz-border-radius:8px;-webkit-border-radius:8px;border-radius:8px}.fb_dialog_content{background:#fff;color:#333}.fb_dialog_close_icon{background:url(http://static.ak.fbcdn.net/rsrc.php/v2/yq/r/IE9JII6Z1Ys.png) no-repeat scroll 0 0 transparent;_background-image:url(http://static.ak.fbcdn.net/rsrc.php/v2/yL/r/s816eWC-2sl.gif);cursor:pointer;display:block;height:15px;position:absolute;right:18px;top:17px;width:15px}.fb_dialog_mobile .fb_dialog_close_icon{top:5px;left:5px;right:auto}.fb_dialog_padding{background-color:transparent;position:absolute;width:1px;z-index:-1}.fb_dialog_close_icon:hover{background:url(http://static.ak.fbcdn.net/rsrc.php/v2/yq/r/IE9JII6Z1Ys.png) no-repeat scroll 0 -15px transparent;_background-image:url(http://static.ak.fbcdn.net/rsrc.php/v2/yL/r/s816eWC-2sl.gif)}.fb_dialog_close_icon:active{background:url(http://static.ak.fbcdn.net/rsrc.php/v2/yq/r/IE9JII6Z1Ys.png) no-repeat scroll 0 -30px transparent;_background-image:url(http://static.ak.fbcdn.net/rsrc.php/v2/yL/r/s816eWC-2sl.gif)}.fb_dialog_loader{background-color:#f6f7f8;border:1px solid #606060;font-size:24px;padding:20px}.fb_dialog_top_left,.fb_dialog_top_right,.fb_dialog_bottom_left,.fb_dialog_bottom_right{height:10px;width:10px;overflow:hidden;position:absolute}.fb_dialog_top_left{background:url(http://static.ak.fbcdn.net/rsrc.php/v2/ye/r/8YeTNIlTZjm.png) no-repeat 0 0;left:-10px;top:-10px}.fb_dialog_top_right{background:url(http://static.ak.fbcdn.net/rsrc.php/v2/ye/r/8YeTNIlTZjm.png) no-repeat 0 -10px;right:-10px;top:-10px}.fb_dialog_bottom_left{background:url(http://static.ak.fbcdn.net/rsrc.php/v2/ye/r/8YeTNIlTZjm.png) no-repeat 0 -20px;bottom:-10px;left:-10px}.fb_dialog_bottom_right{background:url(http://static.ak.fbcdn.net/rsrc.php/v2/ye/r/8YeTNIlTZjm.png) no-repeat 0 -30px;right:-10px;bottom:-10px}.fb_dialog_vert_left,.fb_dialog_vert_right,.fb_dialog_horiz_top,.fb_dialog_horiz_bottom{position:absolute;background:#525252;filter:alpha(opacity=70);opacity:.7}.fb_dialog_vert_left,.fb_dialog_vert_right{width:10px;height:100%}.fb_dialog_vert_left{margin-left:-10px}.fb_dialog_vert_right{right:0;margin-right:-10px}.fb_dialog_horiz_top,.fb_dialog_horiz_bottom{width:100%;height:10px}.fb_dialog_horiz_top{margin-top:-10px}.fb_dialog_horiz_bottom{bottom:0;margin-bottom:-10px}.fb_dialog_iframe{line-height:0}.fb_dialog_content .dialog_title{background:#6d84b4;border:1px solid #3a5795;color:#fff;font-size:14px;font-weight:bold;margin:0}.fb_dialog_content .dialog_title>span{background:url(http://static.ak.fbcdn.net/rsrc.php/v2/yd/r/Cou7n-nqK52.gif) no-repeat 5px 50%;float:left;padding:5px 0 7px 26px}body.fb_hidden{-webkit-transform:none;height:100%;margin:0;overflow:visible;position:absolute;top:-10000px;left:0;width:100%}.fb_dialog.fb_dialog_mobile.loading{background:url(http://static.ak.fbcdn.net/rsrc.php/v2/ya/r/3rhSv5V8j3o.gif) white no-repeat 50% 50%;min-height:100%;min-width:100%;overflow:hidden;position:absolute;top:0;z-index:10001}.fb_dialog.fb_dialog_mobile.loading.centered{max-height:590px;min-height:590px;max-width:500px;min-width:500px}#fb-root #fb_dialog_ipad_overlay{background:rgba(0, 0, 0, .45);position:absolute;left:0;top:0;width:100%;min-height:100%;z-index:10000}#fb-root #fb_dialog_ipad_overlay.hidden{display:none}.fb_dialog.fb_dialog_mobile.loading iframe{visibility:hidden}.fb_dialog_content .dialog_header{-webkit-box-shadow:white 0 1px 1px -1px inset;background:-webkit-gradient(linear, 0% 0%, 0% 100%, from(#738ABA), to(#2C4987));border-bottom:1px solid;border-color:#1d4088;color:#fff;font:14px Helvetica, sans-serif;font-weight:bold;text-overflow:ellipsis;text-shadow:rgba(0, 30, 84, .296875) 0 -1px 0;vertical-align:middle;white-space:nowrap}.fb_dialog_content .dialog_header table{-webkit-font-smoothing:subpixel-antialiased;height:43px;width:100%}.fb_dialog_content .dialog_header td.header_left{font-size:12px;padding-left:5px;vertical-align:middle;width:60px}.fb_dialog_content .dialog_header td.header_right{font-size:12px;padding-right:5px;vertical-align:middle;width:60px}.fb_dialog_content .touchable_button{background:-webkit-gradient(linear, 0% 0%, 0% 100%, from(#4966A6), color-stop(.5, #355492), to(#2A4887));border:1px solid #2f477a;-webkit-background-clip:padding-box;-webkit-border-radius:3px;-webkit-box-shadow:rgba(0, 0, 0, .117188) 0 1px 1px inset, rgba(255, 255, 255, .167969) 0 1px 0;display:inline-block;margin-top:3px;max-width:85px;line-height:18px;padding:4px 12px;position:relative}.fb_dialog_content .dialog_header .touchable_button input{border:none;background:none;color:#fff;font:12px Helvetica, sans-serif;font-weight:bold;margin:2px -12px;padding:2px 6px 3px 6px;text-shadow:rgba(0, 30, 84, .296875) 0 -1px 0}.fb_dialog_content .dialog_header .header_center{color:#fff;font-size:16px;font-weight:bold;line-height:18px;text-align:center;vertical-align:middle}.fb_dialog_content .dialog_content{background:url(http://static.ak.fbcdn.net/rsrc.php/v2/y9/r/jKEcVPZFk-2.gif) no-repeat 50% 50%;border:1px solid #555;border-bottom:0;border-top:0;height:150px}.fb_dialog_content .dialog_footer{background:#f6f7f8;border:1px solid #555;border-top-color:#ccc;height:40px}#fb_dialog_loader_close{float:left}.fb_dialog.fb_dialog_mobile .fb_dialog_close_button{text-shadow:rgba(0, 30, 84, .296875) 0 -1px 0}.fb_dialog.fb_dialog_mobile .fb_dialog_close_icon{visibility:hidden}
         .fb_iframe_widget{display:inline-block;position:relative}.fb_iframe_widget span{display:inline-block;position:relative;text-align:justify}.fb_iframe_widget iframe{position:absolute}.fb_iframe_widget_fluid_desktop,.fb_iframe_widget_fluid_desktop span,.fb_iframe_widget_fluid_desktop iframe{max-width:100%}.fb_iframe_widget_fluid_desktop iframe{min-width:220px;position:relative}.fb_iframe_widget_lift{z-index:1}.fb_hide_iframes iframe{position:relative;left:-10000px}.fb_iframe_widget_loader{position:relative;display:inline-block}.fb_iframe_widget_fluid{display:inline}.fb_iframe_widget_fluid span{width:100%}.fb_iframe_widget_loader iframe{min-height:32px;z-index:2;zoom:1}.fb_iframe_widget_loader .FB_Loader{background:url(http://static.ak.fbcdn.net/rsrc.php/v2/y9/r/jKEcVPZFk-2.gif) no-repeat;height:32px;width:32px;margin-left:-16px;position:absolute;left:50%;z-index:4}
      </style>
      <style type="text/css" media="screen">.uv-icon{-webkit-box-sizing:border-box;-moz-box-sizing:border-box;box-sizing:border-box;display:inline-block;cursor:pointer;position:relative;-webkit-transition:all 300ms;-moz-transition:all 300ms;-o-transition:all 300ms;transition:all 300ms;width:39px;height:39px;position:fixed;z-index:100002;opacity:0.8;-webkit-transition:opacity 100ms;-moz-transition:opacity 100ms;-o-transition:opacity 100ms;transition:opacity 100ms}.uv-icon.uv-bottom-right{bottom:10px;right:12px}.uv-icon.uv-top-right{top:10px;right:12px}.uv-icon.uv-bottom-left{bottom:10px;left:12px}.uv-icon.uv-top-left{top:10px;left:12px}.uv-icon.uv-is-selected{opacity:1}.uv-icon svg{width:39px;height:39px}.uv-popover{font-family:sans-serif;font-weight:100;font-size:13px;color:black;position:fixed;z-index:100001}.uv-popover-content{-webkit-border-radius:5px;-moz-border-radius:5px;-ms-border-radius:5px;-o-border-radius:5px;border-radius:5px;background:white;position:relative;width:325px;height:325px;-webkit-transition:background 200ms;-moz-transition:background 200ms;-o-transition:background 200ms;transition:background 200ms}.uv-bottom .uv-popover-content{-webkit-box-shadow:rgba(0,0,0,0.3) 0 -10px 60px,rgba(0,0,0,0.1) 0 0 20px;-moz-box-shadow:rgba(0,0,0,0.3) 0 -10px 60px,rgba(0,0,0,0.1) 0 0 20px;box-shadow:rgba(0,0,0,0.3) 0 -10px 60px,rgba(0,0,0,0.1) 0 0 20px}.uv-top .uv-popover-content{-webkit-box-shadow:rgba(0,0,0,0.3) 0 10px 60px,rgba(0,0,0,0.1) 0 0 20px;-moz-box-shadow:rgba(0,0,0,0.3) 0 10px 60px,rgba(0,0,0,0.1) 0 0 20px;box-shadow:rgba(0,0,0,0.3) 0 10px 60px,rgba(0,0,0,0.1) 0 0 20px}.uv-left .uv-popover-content{-webkit-box-shadow:rgba(0,0,0,0.3) 10px 0 60px,rgba(0,0,0,0.1) 0 0 20px;-moz-box-shadow:rgba(0,0,0,0.3) 10px 0 60px,rgba(0,0,0,0.1) 0 0 20px;box-shadow:rgba(0,0,0,0.3) 10px 0 60px,rgba(0,0,0,0.1) 0 0 20px}.uv-right .uv-popover-content{-webkit-box-shadow:rgba(0,0,0,0.3) -10px 0 60px,rgba(0,0,0,0.1) 0 0 20px;-moz-box-shadow:rgba(0,0,0,0.3) -10px 0 60px,rgba(0,0,0,0.1) 0 0 20px;box-shadow:rgba(0,0,0,0.3) -10px 0 60px,rgba(0,0,0,0.1) 0 0 20px}.uv-ie8 .uv-popover-content{position:relative}.uv-ie8 .uv-popover-content .uv-popover-content-shadow{display:block;background:black;content:'';position:absolute;left:-15px;top:-15px;width:100%;height:100%;filter:progid:DXImageTransform.Microsoft.Blur(PixelRadius=15,MakeShadow=true,ShadowOpacity=0.30);z-index:-1}.uv-popover-tail{border:9px solid transparent;width:0;z-index:10;position:absolute;-webkit-transition:border-top-color 200ms;-moz-transition:border-top-color 200ms;-o-transition:border-top-color 200ms;transition:border-top-color 200ms}.uv-top .uv-popover-tail{bottom:-20px;border-top:11px solid white}.uv-bottom .uv-popover-tail{top:-20px;border-bottom:11px solid white}.uv-left .uv-popover-tail{right:-20px;border-left:11px solid white}.uv-right .uv-popover-tail{left:-20px;border-right:11px solid white}.uv-popover-loading{background:white;-webkit-border-radius:5px;-moz-border-radius:5px;-ms-border-radius:5px;-o-border-radius:5px;border-radius:5px;position:absolute;width:100%;height:100%;left:0;top:0}.uv-popover-loading-text{position:absolute;top:50%;margin-top:-0.5em;width:100%;text-align:center}.uv-popover-iframe-container{height:100%}.uv-popover-iframe{-webkit-border-radius:5px;-moz-border-radius:5px;-ms-border-radius:5px;-o-border-radius:5px;border-radius:5px;overflow:hidden}.uv-is-hidden{display:none}.uv-is-invisible{display:block !important;visibility:hidden !important}.uv-is-transitioning{display:block !important}.uv-no-transition{-moz-transition:none !important;-webkit-transition:none !important;-o-transition:color 0 ease-in !important;transition:none !important}.uv-fade{opacity:1;-webkit-transition:opacity 200ms ease-out;-moz-transition:opacity 200ms ease-out;-o-transition:opacity 200ms ease-out;transition:opacity 200ms ease-out}.uv-fade.uv-is-hidden{opacity:0}.uv-scale-top,.uv-scale-top-left,.uv-scale-top-right,.uv-scale-bottom,.uv-scale-bottom-left,.uv-scale-bottom-right,.uv-scale-right,.uv-scale-right-top,.uv-scale-right-bottom,.uv-scale-left,.uv-scale-left-top,.uv-scale-left-bottom,.uv-slide-top,.uv-slide-bottom,.uv-slide-left,.uv-slide-right{opacity:1;-webkit-transition:all 80ms ease-out;-moz-transition:all 80ms ease-out;-o-transition:all 80ms ease-out;transition:all 80ms ease-out}.uv-scale-top.uv-is-hidden{opacity:0;-webkit-transform:scale(0.8) translateY(-15%);-moz-transform:scale(0.8) translateY(-15%);-ms-transform:scale(0.8) translateY(-15%);-o-transform:scale(0.8) translateY(-15%);transform:scale(0.8) translateY(-15%)}.uv-scale-top-left.uv-is-hidden{opacity:0;-webkit-transform:scale(0.8) translateY(-15%) translateX(-10%);-moz-transform:scale(0.8) translateY(-15%) translateX(-10%);-ms-transform:scale(0.8) translateY(-15%) translateX(-10%);-o-transform:scale(0.8) translateY(-15%) translateX(-10%);transform:scale(0.8) translateY(-15%) translateX(-10%)}.uv-scale-top-right.uv-is-hidden{opacity:0;-webkit-transform:scale(0.8) translateY(-15%) translateX(10%);-moz-transform:scale(0.8) translateY(-15%) translateX(10%);-ms-transform:scale(0.8) translateY(-15%) translateX(10%);-o-transform:scale(0.8) translateY(-15%) translateX(10%);transform:scale(0.8) translateY(-15%) translateX(10%)}.uv-scale-bottom.uv-is-hidden{opacity:0;-webkit-transform:scale(0.8) translateY(15%);-moz-transform:scale(0.8) translateY(15%);-ms-transform:scale(0.8) translateY(15%);-o-transform:scale(0.8) translateY(15%);transform:scale(0.8) translateY(15%)}.uv-scale-bottom-left.uv-is-hidden{opacity:0;-webkit-transform:scale(0.8) translateY(15%) translateX(-10%);-moz-transform:scale(0.8) translateY(15%) translateX(-10%);-ms-transform:scale(0.8) translateY(15%) translateX(-10%);-o-transform:scale(0.8) translateY(15%) translateX(-10%);transform:scale(0.8) translateY(15%) translateX(-10%)}.uv-scale-bottom-right.uv-is-hidden{opacity:0;-webkit-transform:scale(0.8) translateY(15%) translateX(10%);-moz-transform:scale(0.8) translateY(15%) translateX(10%);-ms-transform:scale(0.8) translateY(15%) translateX(10%);-o-transform:scale(0.8) translateY(15%) translateX(10%);transform:scale(0.8) translateY(15%) translateX(10%)}.uv-scale-right.uv-is-hidden{opacity:0;-webkit-transform:scale(0.8) translateX(15%);-moz-transform:scale(0.8) translateX(15%);-ms-transform:scale(0.8) translateX(15%);-o-transform:scale(0.8) translateX(15%);transform:scale(0.8) translateX(15%)}.uv-scale-right-top.uv-is-hidden{opacity:0;-webkit-transform:scale(0.8) translateX(15%) translateY(-10%);-moz-transform:scale(0.8) translateX(15%) translateY(-10%);-ms-transform:scale(0.8) translateX(15%) translateY(-10%);-o-transform:scale(0.8) translateX(15%) translateY(-10%);transform:scale(0.8) translateX(15%) translateY(-10%)}.uv-scale-right-bottom.uv-is-hidden{opacity:0;-webkit-transform:scale(0.8) translateX(15%) translateY(10%);-moz-transform:scale(0.8) translateX(15%) translateY(10%);-ms-transform:scale(0.8) translateX(15%) translateY(10%);-o-transform:scale(0.8) translateX(15%) translateY(10%);transform:scale(0.8) translateX(15%) translateY(10%)}.uv-scale-left.uv-is-hidden{opacity:0;-webkit-transform:scale(0.8) translateX(-15%);-moz-transform:scale(0.8) translateX(-15%);-ms-transform:scale(0.8) translateX(-15%);-o-transform:scale(0.8) translateX(-15%);transform:scale(0.8) translateX(-15%)}.uv-scale-left-top.uv-is-hidden{opacity:0;-webkit-transform:scale(0.8) translateX(-15%) translateY(-10%);-moz-transform:scale(0.8) translateX(-15%) translateY(-10%);-ms-transform:scale(0.8) translateX(-15%) translateY(-10%);-o-transform:scale(0.8) translateX(-15%) translateY(-10%);transform:scale(0.8) translateX(-15%) translateY(-10%)}.uv-scale-left-bottom.uv-is-hidden{opacity:0;-webkit-transform:scale(0.8) translateX(-15%) translateY(10%);-moz-transform:scale(0.8) translateX(-15%) translateY(10%);-ms-transform:scale(0.8) translateX(-15%) translateY(10%);-o-transform:scale(0.8) translateX(-15%) translateY(10%);transform:scale(0.8) translateX(-15%) translateY(10%)}.uv-slide-top.uv-is-hidden{-webkit-transform:translateY(-100%);-moz-transform:translateY(-100%);-ms-transform:translateY(-100%);-o-transform:translateY(-100%);transform:translateY(-100%)}.uv-slide-bottom.uv-is-hidden{-webkit-transform:translateY(100%);-moz-transform:translateY(100%);-ms-transform:translateY(100%);-o-transform:translateY(100%);transform:translateY(100%)}.uv-slide-left.uv-is-hidden{-webkit-transform:translateX(-100%);-moz-transform:translateX(-100%);-ms-transform:translateX(-100%);-o-transform:translateX(-100%);transform:translateX(-100%)}.uv-slide-right.uv-is-hidden{-webkit-transform:translateX(100%);-moz-transform:translateX(100%);-ms-transform:translateX(100%);-o-transform:translateX(100%);transform:translateX(100%)}
         #Div1
         {
         width: 432px;
         }
      <style>
         .button {
         display: inline-block;
         border-radius: 4px;
         background-color: #f4511e;
         border: none;
         color: #FFFFFF;
         text-align: center;
         font-size: 28px;
         padding: 20px;
         width: 200px;
         transition: all 0.5s;
         cursor: pointer;
         margin: 5px;
         }
         .button span {
         cursor: pointer;
         display: inline-block;
         position: relative;
         transition: 0.5s;
         }
         .HyperLink1{
         background-color:green; padding: 14px 25px;text-align: center;text-decoration: none;display: inline-block;box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
         }
         .HyperLink1:hover {
         text-decoration:none;
         font-size:15px;
         background-color:seagreen;
         box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 50px 0 rgba(0,0,0,0.19);
         }
         .HyperLink2{
         background-color:red; padding: 14px 25px;text-align: center;text-decoration: none;display: inline-block;box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
         }
         .HyperLink2:hover{
         text-decoration:none;
         font-size:15px;
         background-color:red;
         box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 50px 0 rgba(0,0,0,0.19);
         }
         .HyperLink1::after{
         content: '\002B';
         }
         .HyperLink1.active::after{
         content: "\2212";
         }
         .button span:after {
         content: '\00bb';
         position: absolute;
         opacity: 0;
         top: 0;
         right: -20px;
         transition: 0.5s;
         }
         .button:hover span {
         padding-right: 25px;
         }
         .button:hover span:after {
         opacity: 1;
         right: 0;
         }
      </style>
      <style type="text/css">
         .button {
         background-color: #4CAF50; /* Green */
         border: none;
         color: white;
         padding: 15px 32px;
         text-align: center;
         text-decoration: none;
         display: inline-block;
         font-size: 16px;
         margin: 4px 2px;
         cursor: pointer;
         -webkit-transition-duration: 0.4s; /* Safari */
         transition-duration: 0.4s;
         }
         .button2:hover {
         box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
         }
         .auto-style1 {
         width: 283px;
         }
         #page-top .utility-bar .container>ul>li.campus-map {
         background: url(https://international.gsu.edu/wp-content/themes/gsu-core/img/campus-map.png) 10px 0px no-repeat;
         padding-left: 40px;
         }
      </style>
      <style>
         * {
         box-sizing:border-box;
         }
         /* Create two unequal columns that floats next to each other */
         .column {
         float: left;
         padding: 10px;
         }
         .left {
         width: 25%;
         }
         .right {
         width: 75%;
         }
         /* Clear floats after the columns */
         /*.row:after {
         content: "";
         display: table;
         clear: both;
         }*/
         html,body{height:auto;}
      </style>
        <style>
        .modal-parent {
            display:none;
            position: fixed;
            z-index: 1;
            padding-top: 100px;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            overflow: auto;
            background-color: rgba(0,0,0,0.4);
        }

        .modal-content {
            position: absolute;
            top: 20%;
            left: 30%;
            margin: auto;
            padding: 0;
            border: 1px solid #888;
            width: 40%;
            box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2),0 6px 20px 0 rgba(0,0,0,0.19);
            font-family: Calibri;
            background-color: #FFFFFF;
            height: 30vh;
            border-radius: 3px;
        }

       
        .modal-header {
            height: 8vh;
            font-weight: bold;
            border-bottom: 1px solid black;
            font-size: 23px;
            padding: 10px;
            display: flex;
            align-items: center;
        }

        .modal-body {
            color: black;
            font-size: 16px;
            text-align: left;
        }

        .modal-footer {
            background-color: white;
            padding: 6px;
            color: black;
        }

        .resume {
            width: 120px;
            border-radius: 5px;
            padding: 10px 0 10px 0;
            margin-right: 10px;
            float: right;
            background-color: #2367b7;
            color: white;
            border: none;
            text-decoration:none;
        }

        .cancel {
            padding: 10px;
            width: 65px;
            background-color: white;
            border-radius: 5px;
            float: right;
            margin-right: 10px;
            color: black;
            border: 1px solid black;
            text-align: center;
            text-decoration:none;
        }
        .cancel:hover{
            color:black;
        }
        .resume:hover{
              color:white;
        }

        #seconds {
            color: red;
            font-weight: bold;
        }
    </style>
    <script src='https://kit.fontawesome.com/a076d05399.js'></script>
   </head>
   <body class="home page page-id-6 page-template page-template-front-page-php utility-bar gsu-core social-toolbar" data-twttr-rendered="true">
      <div id="uvTab" style="background:red url(http://widget.uservoice.com/pkg/clients/widget2/tab-horizontal-dark-no-bullhorn-7cdf414f3f944a78dd7439dced926fd2.png) 0 50% no-repeat;border:1px solid #FFF;border-bottom:none;-moz-border-radius:4px 4px 0 0;-webkit-border-radius:4px 4px 0 0;border-radius:4px 4px 0 0;-moz-box-shadow:inset rgba(255,255,255,.25) 1px 1px 1px, rgba(0,0,0,.5) 0 1px 2px;-webkit-box-shadow:inset rgba(255,255,255,.25) 1px 1px 1px, rgba(0,0,0,.5) 0 1px 2px;box-shadow:inset rgba(255,255,255,.25) 1px 1px 1px, rgba(0,0,0,.5) 0 1px 2px;font:normal normal bold 14px/1em Arial, sans-serif;position:fixed;right:10px;bottom:0;z-index:9999;background-color:#0033cc;" class="uv-tab uv-slide-bottom "><a id="uvTabLabel" style="background-color: transparent; display:block;padding:6px 10px 2px 10px;text-decoration:none;" href="javascript:return false;"><img src="http://widget.uservoice.com/dcache/widget/feedback-tab.png?t=Feedback&amp;c=ffffff&amp;r=0" alt="Feedback" style="border:0; background-color: transparent; padding:0; margin:0;"></a></div>
      <div id="fb-root" class=" fb_reset">
         <div style="position: absolute; top: -10000px; height: 0px; width: 0px;">
            <div><iframe name="fed24a688" frameborder="0" allowtransparency="true" scrolling="no" src="https://www.facebook.com/connect/ping?client_id=302092436517453&amp;domain=international.gsu.edu&amp;origin=1&amp;redirect_uri=http%3A%2F%2Fstatic.ak.facebook.com%2Fconnect%2Fxd_arbiter%2FrFG58m7xAig.js%3Fversion%3D41%23cb%3Df2fb9f17c4%26domain%3Dinternational.gsu.edu%26origin%3Dhttp%253A%252F%252Finternational.gsu.edu%252Ff264061e68%26relation%3Dparent&amp;response_type=token%2Csigned_request%2Ccode&amp;sdk=joey" style="display: none;"></iframe></div>
         </div>
         <div style="position: absolute; top: -10000px; height: 0px; width: 0px;">
            <div><iframe name="fb_xdm_frame_http" frameborder="0" allowtransparency="true" scrolling="no" id="fb_xdm_frame_http" aria-hidden="true" title="Facebook Cross Domain Communication Frame" tabindex="-1" src="http://static.ak.facebook.com/connect/xd_arbiter/rFG58m7xAig.js?version=41#channel=f264061e68&amp;origin=http%3A%2F%2Finternational.gsu.edu" style="border: none;"></iframe><iframe name="fb_xdm_frame_https" frameborder="0" allowtransparency="true" scrolling="no" id="fb_xdm_frame_https" aria-hidden="true" title="Facebook Cross Domain Communication Frame" tabindex="-1" src="https://s-static.ak.facebook.com/connect/xd_arbiter/rFG58m7xAig.js?version=41#channel=f264061e68&amp;origin=http%3A%2F%2Finternational.gsu.edu" style="border: none;"></iframe></div>
         </div>
      </div>
      <script>       (function (d, s, id) {
              var js, fjs = d.getElementsByTagName(s)[0];
              if (d.getElementById(id)) return;
              js = d.createElement(s); js.id = id;
              js.src = "//connect.facebook.net/en_US/all.js#xfbml=1&appId=302092436517453";
              fjs.parentNode.insertBefore(js, fjs);
          }(document, 'script', 'facebook-jssdk'));
      </script>

      <div class="skip-link screen-reader-text">
         <a href="#main-content" class="element-invisible element-focusable">Skip to main content</a>
      </div>
      <div id="wrapper" class="home">
      <section id="page-top">
         <div class="fixed-util-bar">
            <div class="utility-bar hidden-phone">
               <div id="header-menu">
                  <div class="student-header-menu" style="display: none;">
                     <div class="header-close student-close"><a href="#" title="Close Menu">×</a></div>
                     <div class="header-line"><span>University Links</span></div>
                     <div class="student-staff-quick-links"></div>
                  </div>
                  <div class="priority-links-container student-links" style="display: none;">
                     <ul>
                        <li class="priority-links"><a href="https://www.gsu.edu/a-z-index/">Student A-Z Index</a></li>
                        <li class="priority-links"><a href="https://technology.gsu.edu/help-center/">Help Center</a></li>
                        <li class="priority-links"><a href="https://safety.gsu.edu/">Safety &amp; Security</a></li>
                        <li class="priority-links"><a href="https://facilities.gsu.edu/">Facilities</a></li>
                     </ul>
                  </div>
                  <div class="faculty-staff-header-menu" style="display: none;">
                     <div class="header-close staff-close"><a href="#" title="Close Menu">×</a></div>
                     <div class="header-line"><span>University Links</span></div>
                     <div class="student-staff-quick-links"></div>
                  </div>
                  <div class="priority-links-container  staff-links" style="display: none;">
                     <ul>
                        <li class="priority-links"><a href="https://www.gsu.edu/a-z-index/">Staff A-Z Index</a></li>
                        <li class="priority-links"><a href="https://technology.gsu.edu/help-center/">Help Center</a></li>
                        <li class="priority-links"><a href="https://safety.gsu.edu/">Safety &amp; Security</a></li>
                        <li class="priority-links"><a href="https://facilities.gsu.edu/">Facilities</a></li>
                     </ul>
                  </div>
               </div>
               <div class="container">
                  <ul>
                     <li class="flame">
                        <a href="https://international.gsu.edu/" title="International Initiatives" rel="home"><i class="flame-icon"></i></a>
                     </li>
                     <li class="breadcrumb">
                        <a href="https://www.gsu.edu">Georgia State Home <i class="fa fa-angle-down" style="font-weight:bold; color:#333"></i></a>
                        <div class="dropdown">
                           <div class="menu-a-main-menu-container">
                              <ul id="menu-a-main-menu" class="menu">
                                 <li id="menu-item-258575" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-258575">
                                    <a href="http://www.gsu.edu/about/">About</a>
                                    <ul class="sub-menu">
                                       <li id="menu-item-254380" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-254380 dontsplit">
                                          <a href="http://www.gsu.edu/contact-georgia-state/">Contact Georgia State</a>
                                          <ul class="sub-menu">
                                             <li id="menu-item-4398050" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-4398050"><a href="http://www.gsu.edu/a-z-index/">Department A-Z Index</a></li>
                                          </ul>
                                       </li>
                                       <li id="menu-item-4354021" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-4354021 dontsplit"><a href="http://employment.gsu.edu">Employment</a></li>
                                       <li id="menu-item-4353984" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-4353984 dontsplit">
                                          <a href="http://www.gsu.edu/points-of-distinction/">Points of Distinction</a>
                                          <ul class="sub-menu">
                                             <li id="menu-item-254385" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-254385"><a href="http://www.gsu.edu/about/quick-facts/">Quick Facts</a></li>
                                          </ul>
                                       </li>
                                       <li id="menu-item-258589" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-258589 dontsplit"><a href="http://president.gsu.edu">Office of The President</a></li>
                                       <li id="menu-item-4732210" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-4732210 dontsplit"><a href="http://consolidation.gsu.edu">Consolidation</a></li>
                                       <li id="menu-item-254384" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-254384 dontsplit">
                                          <a href="http://www.gsu.edu/about/governance-and-strategy/administrative/">Administration</a>
                                          <ul class="sub-menu">
                                             <li id="menu-item-4401956" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-4401956"><a href="http://giving.gsu.edu">Development and Alumni Affairs</a></li>
                                             <li id="menu-item-4401958" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-4401958"><a href="http://finance.gsu.edu">Finance and Administration</a></li>
                                             <li id="menu-item-4401957" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-4401957"><a href="http://ga.gsu.edu">Government Affairs</a></li>
                                             <li id="menu-item-4401960" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-4401960"><a href="http://innovation.gsu.edu">Innovative Instruction and Technology</a></li>
                                             <li id="menu-item-4401959" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-4401959"><a href="http://universityattorney.gsu.edu">Legal Affairs</a></li>
                                             <li id="menu-item-4401961" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-4401961"><a href="http://pr.gsu.edu">PR and Marketing Communications</a></li>
                                             <li id="menu-item-4732212" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-4732212"><a href="http://provost.gsu.edu">Provost</a></li>
                                             <li id="menu-item-4401963" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-4401963"><a href="http://research.gsu.edu">Research</a></li>
                                             <li id="menu-item-4401962" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-4401962"><a href="http://studentaffairs.gsu.edu">Student Affairs</a></li>
                                             <li id="menu-item-254382" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-254382"><a href="http://www.gsu.edu/about/governance-and-strategy/">Governance and Strategy</a></li>
                                             <li id="menu-item-254383" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-254383"><a href="http://www.gsu.edu/about/governance-and-strategy/university-policies/">University Policies</a></li>
                                          </ul>
                                       </li>
                                    </ul>
                                 </li>
                                 <li id="menu-item-4355100" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-4355100">
                                    <a href="http://www.gsu.edu/academics/">Academics</a>
                                    <ul class="sub-menu">
                                       <li id="menu-item-258557" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-258557 dontsplit"><a href="http://library.gsu.edu">University Library</a></li>
                                       <li id="menu-item-258568" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-258568 dontsplit"><a href="http://lawlibrary.gsu.edu/">College of Law Library</a></li>
                                       <li id="menu-item-258567" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-258567 dontsplit"><a href="http://provost.gsu.edu">Office of The Provost</a></li>
                                       <li id="menu-item-4727242" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-4727242 dontsplit"><a href="http://faculty.gsu.edu">Office of Faculty Affairs</a></li>
                                       <li id="menu-item-4441570" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-4441570 dontsplit">
                                          <a href="http://www.gsu.edu/colleges-schools/">Colleges &amp; Institutes</a>
                                          <ul class="sub-menu">
                                             <li id="menu-item-258558" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-258558"><a href="http://aysps.gsu.edu/">Andrew Young School of Policy Studies</a></li>
                                             <li id="menu-item-258559" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-258559"><a href="http://snhp.gsu.edu/">Byrdine F. Lewis School of Nursing and Health Professions</a></li>
                                             <li id="menu-item-258560" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-258560"><a href="http://www.cas.gsu.edu/">College of Arts and Sciences</a></li>
                                             <li id="menu-item-258561" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-258561"><a href="http://education.gsu.edu/main/">College of Education and Human Development</a></li>
                                             <li id="menu-item-258562" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-258562"><a href="http://law.gsu.edu/">College of Law</a></li>
                                             <li id="menu-item-258564" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-258564"><a href="http://honors.gsu.edu">Honors College</a></li>
                                             <li id="menu-item-4728309" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-4728309"><a href="http://biomedical.gsu.edu">Institute for Biomedical Sciences</a></li>
                                             <li id="menu-item-258563" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-258563"><a href="http://publichealth.gsu.edu/">School of Public Health</a></li>
                                             <li id="menu-item-258565" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-258565"><a href="http://robinson.gsu.edu/">J. Mack Robinson College of Business</a></li>
                                          </ul>
                                       </li>
                                       <li id="menu-item-4349022" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-4349022 dontsplit">
                                          <a href="http://www.gsu.edu/degrees-and-majors/">Degrees and Majors</a>
                                          <ul class="sub-menu">
                                             <li id="menu-item-258570" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-258570"><a href="http://www.gsu.edu/degrees-and-majors/#undergraduate">Undergraduate Degrees and Majors</a></li>
                                             <li id="menu-item-258571" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-258571"><a href="http://www.gsu.edu/degrees-and-majors/#graduate">Graduate Degrees and Majors</a></li>
                                             <li id="menu-item-258572" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-258572"><a href="http://www.gsu.edu/degrees-and-majors/#colleges">Degrees and Majors Sorted by College</a></li>
                                             <li id="menu-item-258574" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-258574"><a href="http://www.gsu.edu/degrees-and-majors/#guides">Undergraduate Academic Guides</a></li>
                                          </ul>
                                       </li>
                                       <li id="menu-item-258566" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-258566 dontsplit"><a href="http://advisement.gsu.edu">Student Advising</a></li>
                                       <li id="menu-item-4451819" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-4451819 dontsplit"><a href="http://registrar.gsu.edu/registration/semester-calendars-exam-schedules/">Academic Calendars</a></li>
                                    </ul>
                                 </li>
                                 <li id="menu-item-258577" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-258577">
                                    <a href="http://admissions.gsu.edu">Admissions</a>
                                    <ul class="sub-menu">
                                       <li id="menu-item-81" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-81 dontsplit">
                                          <a href="http://admissions.gsu.edu">Undergraduate Admissions</a>
                                          <ul class="sub-menu">
                                             <li id="menu-item-258599" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-258599"><a href="http://welcome.gsu.edu">Take a Tour</a></li>
                                             <li id="menu-item-4693941" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-4693941"><a href="http://admissions.gsu.edu/panther-predictor/">Do You Qualify</a></li>
                                             <li id="menu-item-4693942" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-4693942"><a href="http://admissions.gsu.edu/what-does-it-cost/">What Will It Cost You</a></li>
                                             <li id="menu-item-4693943" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-4693943"><a href="http://admissions.gsu.edu/how-do-i-apply/">How To Apply</a></li>
                                             <li id="menu-item-4693944" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-4693944"><a href="http://admissions.gsu.edu/what-does-it-cost/scholarships/">Need Money For School?</a></li>
                                             <li id="menu-item-4693945" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-4693945"><a href="http://admissions.gsu.edu/what-can-i-study/">What Can You Study?</a></li>
                                             <li id="menu-item-4693946" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-4693946"><a href="http://myhousing.gsu.edu/prospective-students/">Where To Live</a></li>
                                             <li id="menu-item-258596" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-258596"><a href="http://admissions.gsu.edu/connect-with-us/request-info/">Request Information</a></li>
                                             <li id="menu-item-4339480" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-4339480"><a href="http://admissions.gsu.edu/application-status/">Application Status</a></li>
                                             <li id="menu-item-258597" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-258597"><a href="http://admissions.gsu.edu/connect-with-us/">Contact Us</a></li>
                                          </ul>
                                       </li>
                                       <li id="menu-item-82" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-82 dontsplit">
                                          <a href="http://graduate.gsu.edu">Graduate Admissions</a>
                                          <ul class="sub-menu">
                                             <li id="menu-item-258583" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-258583"><a href="http://aysps.gsu.edu/admissions/">Andrew Young School of Policy Studies</a></li>
                                             <li id="menu-item-258584" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-258584"><a href="http://snhp.gsu.edu/188.html">Byrdine F. Lewis School of Nursing and Health Professions</a></li>
                                             <li id="menu-item-258585" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-258585"><a href="http://education.gsu.edu/academics/admissions/graduate-admissions/">College of Education and Human Development</a></li>
                                             <li id="menu-item-258586" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-258586"><a href="http://cas.gsu.edu/graduate-studies/admissions/">College of Arts and Sciences</a></li>
                                             <li id="menu-item-258587" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-258587"><a href="http://law.gsu.edu/admissions/">College of Law</a></li>
                                             <li id="menu-item-258588" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-258588"><a href="http://publichealth.gsu.edu/academic/degrees/">School of Public Health</a></li>
                                             <li id="menu-item-83" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-83"><a href="http://robinson.gsu.edu/apply/index.html">J. Mack Robinson College of Business</a></li>
                                          </ul>
                                       </li>
                                       <li id="menu-item-4339483" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-4339483 dontsplit">
                                          <a href="http://studentaffairs.gsu.edu">Student Affairs</a>
                                          <ul class="sub-menu">
                                             <li id="menu-item-258598" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-258598"><a href="http://myhousing.gsu.edu">Housing</a></li>
                                             <li id="menu-item-4339481" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-4339481"><a href="http://dining.gsu.edu">Dining</a></li>
                                             <li id="menu-item-4339482" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-4339482"><a href="http://parking.gsu.edu">Parking</a></li>
                                          </ul>
                                       </li>
                                       <li id="menu-item-84" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-84 dontsplit"><a href="http://sfs.gsu.edu">Student Financial Services</a></li>
                                    </ul>
                                 </li>
                                 <li id="menu-item-258579" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-258579"><a href="http://research.gsu.edu">Research</a></li>
                                 <li id="menu-item-258580" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-258580"><a href="http://www.georgiastatesports.com">Athletics</a></li>
                                 <li id="menu-item-258581" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-258581">
                                    <a href="http://pantheralumni.com">Alumni</a>
                                    <ul class="sub-menu">
                                       <li id="menu-item-4696356" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-4696356 dontsplit">
                                          <a href="http://pantheralumni.com/s/1471/2/3col.aspx?sid=1471&amp;gid=2&amp;pgid=254">Your Alumni Association</a>
                                          <ul class="sub-menu">
                                             <li id="menu-item-4696357" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-4696357"><a href="http://pantheralumni.com/s/1471/2/3col.aspx?sid=1471&amp;gid=2&amp;pgid=417">Benefits</a></li>
                                             <li id="menu-item-4696358" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-4696358"><a href="http://pantheralumni.com/s/1471/2/3col.aspx?sid=1471&amp;gid=2&amp;pgid=325">Alumni Events</a></li>
                                             <li id="menu-item-4696359" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-4696359"><a href="http://pantheralumni.com/s/1471/2/3col.aspx?sid=1471&amp;gid=2&amp;pgid=326">Join the Alumni Association</a></li>
                                             <li id="menu-item-4696360" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-4696360"><a href="http://pantheralumni.com/s/1471/2/3col.aspx?sid=1471&amp;gid=2&amp;pgid=414">Renew</a></li>
                                          </ul>
                                       </li>
                                       <li id="menu-item-4696361" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-4696361 dontsplit">
                                          <a href="http://pantheralumni.com/s/1471/2/3col.aspx?sid=1471&amp;gid=2&amp;pgid=327">Connect</a>
                                          <ul class="sub-menu">
                                             <li id="menu-item-4696362" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-4696362"><a href="http://pantheralumni.com/s/1471/2/3col.aspx?sid=1471&amp;gid=2&amp;pgid=95&amp;cid=271">Update Your Information</a></li>
                                             <li id="menu-item-4696363" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-4696363"><a href="http://pantheralumni.com/s/1471/2/start.aspx?sid=1471&amp;gid=2&amp;pgid=344">Panther News</a></li>
                                          </ul>
                                       </li>
                                       <li id="menu-item-4696364" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-4696364 dontsplit">
                                          <a href="#">Students</a>
                                          <ul class="sub-menu">
                                             <li id="menu-item-4696365" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-4696365"><a href="http://pantheralumni.com/s/1471/2/saa/start.aspx?sid=1471&amp;gid=2&amp;pgid=330">Student Alumni Association</a></li>
                                             <li id="menu-item-4696366" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-4696366"><a href="http://pantheralumni.com/s/1471/2/3col.aspx?sid=1471&amp;gid=2&amp;pgid=413">Scholarships</a></li>
                                          </ul>
                                       </li>
                                       <li id="menu-item-4696367" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-4696367 dontsplit">
                                          <a href="#">Show Your Spirit</a>
                                          <ul class="sub-menu">
                                             <li id="menu-item-4696368" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-4696368"><a href="http://pantheralumni.com/s/1471/2/3col.aspx?sid=1471&amp;gid=2&amp;pgid=542">Georgia State License Plate</a></li>
                                             <li id="menu-item-4696369" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-4696369"><a href="http://pantheralumni.com/s/1471/2/3col.aspx?sid=1471&amp;gid=2&amp;pgid=550">Panther Cubs</a></li>
                                             <li id="menu-item-4696370" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-4696370"><a href="http://pantheralumni.com/s/1471/2/3col.aspx?sid=1471&amp;gid=2&amp;pgid=919">Panther Gear</a></li>
                                          </ul>
                                       </li>
                                    </ul>
                                 </li>
                                 <li id="menu-item-258582" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-258582"><a href="http://giving.gsu.edu">Giving</a></li>
                                 <li id="menu-item-258578" class="menu-item menu-item-type-custom menu-item-object-custom current-menu-item menu-item-258578">
                                    <a href="http://international.gsu.edu">Global Engagement</a>
                                    <ul class="sub-menu">
                                       <li id="menu-item-258591" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-258591 dontsplit"><a href="http://mystudyabroad.gsu.edu">Study Abroad</a></li>
                                       <li id="menu-item-258592" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-258592 dontsplit"><a href="http://international.gsu.edu/initiatives/">International Initiatives</a></li>
                                       <li id="menu-item-258593" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-258593 dontsplit"><a href="http://international.gsu.edu/initiatives/international-centers-and-institutes-office-of-international-initiatives-georgia-state-university/">Global Research</a></li>
                                       <li id="menu-item-258594" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-258594 dontsplit"><a href="http://isss.gsu.edu">International Students &amp; Scholar Services</a></li>
                                    </ul>
                                 </li>
                              </ul>
                           </div>
                        </div>
                     </li>
                     <li class="quick-links">
                        <span id="print-share-menu"><a href="#"><img src="https://international.gsu.edu/wp-content/themes/gsu-core/img/icon-share.png" alt="Share" width="20px"/>&nbsp;&nbsp;<img src="https://international.gsu.edu/wp-content/themes/gsu-core/img/icon-print.png" alt="Share" width="20px"/>&nbsp;&nbsp;<i class="fa fa-angle-down" style="font-weight:bold; color:#333"></i></a></span>
                        <div class="dropdown" id="print-share">
                           <ul>
                              <li>
                                 <a href="https://twitter.com/?status= https://international.gsu.edu/" class="share" title="Tweet"><img src="https://image.flaticon.com/icons/svg/124/124021.svg" alt="Tweet" width="30px"/></a>&nbsp;&nbsp;
                                 <a href="https://www.facebook.com/sharer/sharer.php?u=https://international.gsu.edu/" class="share" title="Share on Facebook"><img src="https://image.flaticon.com/icons/svg/124/124010.svg" alt="Share on Facebook" width="30px"/></a>&nbsp;&nbsp;
                                 <a href="https://www.linkedin.com/shareArticle?mini=true&amp;url=https://international.gsu.edu/&amp;title=Home&amp;summary=&amp;source=www.gsu.edu" class="share" title="Share on LinkedIn"><img src="https://image.flaticon.com/icons/svg/174/174857.svg" alt="Share on LinkedIn" width="30px"/></a>
                                 <span class="align-right">
                                 <a href="https://www.printfriendly.com/print?url=http%3A%2F%2Flocalhost%2Fgsu-wordpress%2Fcore%2F" class="btn" rel="nofollow" onclick="window.print(); return false;">Print/Email</a>
                                 </span>
                              </li>
                           </ul>
                        </div>
                     </li>
                     <li class="search">
                        <div id="site-search">
                           <form action="https://www.gsu.edu/search-georgia-state/" method="get" name="searchform" class="form-search" id="searchform">
                              <input type="hidden" value="*" name="givennames">
                              <input type="hidden" value="*" name="sns">
                              <input type="hidden" value="All" name="search" id="a1212">
                              <input type="hidden" value="" name="sn" id="sn">
                              <input type="hidden" value="" name="givenname" id="givenname">
                              <div class="input-append">
                                 <label for="q" class="hidden-comp">Search/Directory</label>
                                 <input class="input-medium" placeholder="Search/Directory" type="text" value="" name="q" size="16" id="q" title="Search and Directory"><button name="Search" value="Submit" class="btn" type="submit"> <img src="https://image.flaticon.com/icons/png/512/55/55369.png" alt="Search" width="10px"/></button>
                              </div>
                              <div class="dropdown">
                                 <fieldset>
                                    <legend>
                                       <h3>Search Options</h3>
                                    </legend>
                                    <ul>
                                       <li><label class="radio"><input type="radio" name="site" value="GeorgiaState" checked=""> Georgia State</label></li>
                                       <li><label class="radio"><input type="radio" name="site" value="directory">Directory</label></li>
                                    </ul>
                                 </fieldset>
                              </div>
                           </form>
                        </div>
                     </li>
                     <li class="quick-links">
                        <a href="#" title="Click for Faculty &amp; Staff Menu">Faculty &amp; Staff <i class="fa fa-angle-up" style="font-weight:bold; color:#333"></i></a>
                        <div class="dropdown">
                           <ul>
                              <li class="col3">
                                 <h4><a href="http://library.gsu.edu/">Library</a></h4>
                                 <h4><a href="http://outlook.com/gsu.edu">Email</a></h4>
                                 <h4><a href="http://sendafile.gsu.edu/">Send a File</a></h4>
                                 <h4><a href="https://paws.gsu.edu/">PAWS</a></h4>
                                 <h4><a href="https://www.gosolar.gsu.edu/webforstudent.htm">GoSOLAR</a></h4>
                                 <h4><a href="http://gsu.view.usg.edu/">D2L Brightspace</a></h4>
                                 <h4><a href="http://calendar.gsu.edu/">Calendar</a></h4>
                                 <h4><a href="https://solutions.sciquest.com/apps/Router/Login?OrgName=GSU">PantherMart</a></h4>
                                 <!--                     <h4><a href="http://panthermart.gsu.edu">PantherMart</a></h4> -->
                                 <h4><a href="https://portal.adp.com/public/index.htm">ADP</a></h4>
                                 <h4><a href="https://www.spectrum.gsu.edu">Spectrum</a></h4>
                                 <h4><a href="http://travel.gsu.edu/info">Travel</a></h4>
                                 <h4><a href="http://www.gsu.edu/contact-georgia-state/">Contact Us</a></h4>
                                 <h4><a href="http://technology.gsu.edu/help-center/">Help Center</a></h4>
                                 <h4><a href="http://www.gsu.edu/a-z-index/">A-Z Index</a></h4>
                              </li>
                              <li class="col1">
                                 <ul>
                                    <li>
                                       <h4>On the Campus</h4>
                                    </li>
                                    <li><a href="http://parking.gsu.edu/">Parking</a></li>
                                    <li><a href="http://recreation.gsu.edu/">Recreation Center</a></li>
                                    <li><a href="http://safety.gsu.edu/">Safety</a></li>
                                    <li><a href="http://employees.hr.gsu.edu/worklife-balance/worklife-resources/panther-perqs/">PERQs</a></li>
                                    <li><a href="http://senate.gsu.edu/">Senate</a></li>
                                    <li><a href="http://policies.oie.gsu.edu/">University Policies</a></li>
                                    <li><a href="http://employees.hr.gsu.edu/facultyhandbook">Faculty Handbook</a></li>
                                    <li><a href="http://employees.hr.gsu.edu/staffhandbook">Staff Handbook</a></li>
                                 </ul>
                                 <h4><a href="http://finance.gsu.edu/">Finance &amp; Admin.</a></h4>
                                 <ul>
                                    <li><a href="http://tools.finance.gsu.edu/">Toolkit</a></li>
                                    <li><a href="http://tools.finance.gsu.edu/forms/">Forms</a></li>
                                    <li><a href="http://tools.finance.gsu.edu/training/">Training</a></li>
                                 </ul>
                                 <h4><a href="http://technology.gsu.edu/">Technology</a></h4>
                                 <ul>
                                    <li><a href="http://technology.gsu.edu/technology-services/services-for-you/it-services-for-researchers/">Researchers</a></li>
                                    <li><a href="http://technology.gsu.edu/technology-services/services-for-you/it-services-for-faculty/">Faculty</a></li>
                                    <li><a href="http://technology.gsu.edu/technology-services/services-for-you/it-services-for-staff/">Staff</a></li>
                                 </ul>
                              </li>
                              <li class="col2">
                                 <h4><a href="http://faculty.gsu.edu">Faculty Affairs</a></h4>
                                 <h4><a href="http://hr.gsu.edu">Human Resources</a></h4>
                                 <ul>
                                    <li><a href="http://employees.hr.gsu.edu/">Employees</a></li>
                                    <li><a href="http://managers.hr.gsu.edu/">Managers</a></li>
                                    <li><a href="http://retirees.hr.gsu.edu/">Retirees</a></li>
                                 </ul>
                                 <h4><a href="http://research.gsu.edu">Research</a></h4>
                                 <ul>
                                    <li><a href="http://ursa.research.gsu.edu/">URSA</a></li>
                                 </ul>
                                 <h4><a href="http://facilities.gsu.edu/">Facilities</a></h4>
                                 <ul>
                                    <li><a href="http://events.gsu.edu/">Event Scheduling</a></li>
                                 </ul>
                                 <h4><a href="http://safety.gsu.edu/">Safety</a></h4>
                                 <ul>
                                    <li><a href="http://safety.gsu.edu/police/">Police</a></li>
                                    <li><a href="http://safety.gsu.edu/emergency-management/">Emergency Preparedness</a></li>
                                    <li><a href="https://www.getrave.com/login/gsu">Get Emergency Alerts</a></li>
                                 </ul>
                                 <h4><a href="http://emeriti.gsu.edu/">Emeriti</a></h4>
                              </li>
                           </ul>
                        </div>
                     </li>
                     <li class="quick-links">
                        <a href="#" title="Click for Student Menu">Students <i class="fa fa-angle-up" style="font-weight:bold; color:#333"></i></a>
                        <div class="dropdown">
                           <ul>
                              <li class="col3">
                                 <h4><a href="http://library.gsu.edu/">Library</a></h4>
                                 <h4><a href="http://technology.gsu.edu/technology-services/it-services/email-and-file-storage/panthermail/">Email</a></h4>
                                 <h4><a href="https://paws.gsu.edu/">PAWS</a></h4>
                                 <h4><a href="https://www.gosolar.gsu.edu/webforstudent.htm">GoSOLAR</a></h4>
                                 <h4><a href="http://gsu.view.usg.edu/">D2L Brightspace</a></h4>
                                 <h4><a href="http://calendar.gsu.edu/">Calendar</a></h4>
                                 <h4><a href="http://www.gsu.edu/contact-georgia-state/">Contact Us</a></h4>
                                 <h4><a href="http://technology.gsu.edu/help-center/">Help Center</a></h4>
                                 <h4><a href="http://www.gsu.edu/a-z-index/">A-Z Index</a></h4>
                                 <h4><a href="http://www.gsu.edu/wras" target="_blank">Listen to 88.5</a></h4>
                              </li>
                              <li class="col1">
                                 <ul>
                                    <li>
                                       <h4>Academic Life</h4>
                                    </li>
                                    <li><a href="https://paws.gsu.edu/">Class Registration</a></li>
                                    <li><a href="http://registrar.gsu.edu/registration/registration-guide/">Registration Info.</a></li>
                                    <li><a href="http://advisement.gsu.edu/">Student Advising</a></li>
                                    <li><a href="http://success.students.gsu.edu">Student Success</a></li>
                                    <li><a href="http://veterans.gsu.edu">Military Outreach</a></li>
                                    <li><a href="http://advisement.gsu.edu/self-service/gpa-calculator/">GPA Calculator</a></li>
                                    <li><a href="http://enrollment.gsu.edu/catalogs/">University Catalog</a></li>
                                    <li><a href="http://registrar.gsu.edu/registration/semester-calendars-exam-schedules/">Academic Calendars</a>
                                    </li>
                                    <li><a href="http://sfs.gsu.edu/scholarships-grants/">Scholarships</a></li>
                                    <li><a href="http://sfs.gsu.edu/the-financial-aid-process/">Financial Aid</a></li>
                                    <li><a href="http://sfs.gsu.edu/tuition-fees/payments/">Tuition and Payments</a></li>
                                    <li><a href="http://sfs.gsu.edu/the-financial-aid-process/applying-for-aid/">FAFSA</a></li>
                                    <li><a href="http://services.gsu.edu/service/university-bookstore/?utm_source=Students+Menu&amp;utm_medium=Website&amp;utm_campaign=Bookstore+Students+Menu">Bookstore</a></li>
                                 </ul>
                              </li>
                              <li class="col2">
                                 <ul>
                                    <li>
                                       <h4>Student Life</h4>
                                    </li>
                                    <li><a href="http://studentaffairs.gsu.edu/">Student Affairs</a></li>
                                    <li><a href="http://myhousing.gsu.edu/">Housing</a></li>
                                    <li><a href="http://parking.gsu.edu/">Parking</a></li>
                                    <li><a href="http://dining.gsu.edu/">Dining</a></li>
                                    <li><a href="http://health.gsu.edu/">Health</a></li>
                                    <li><a href="http://career.gsu.edu/">Career Services</a></li>
                                    <li><a href="http://recreation.gsu.edu/">Recreation</a></li>
                                    <li><a href="http://campuslife.gsu.edu/">Campus Life</a></li>
                                    <li><a href="http://sfs.gsu.edu/tuition-fees/student-health-insurance/">Health Insurance</a>
                                    </li>
                                    <li><a href="http://studenthandbook.gsu.edu/">Student Handbook</a></li>
                                    <li><a href="http://codeofconduct.gsu.edu/">Code of Conduct</a></li>
                                    <li><a href="http://safety.gsu.edu">Safety &amp; Security</a></li>
                                    <li><a href="https://www.getrave.com/login/gsu">Get Emergency Alerts</a></li>
                                    <li><a href="http://technology.gsu.edu/technology-services/services-for-you/it-services-for-students/">Technology</a></li>
                                 </ul>
                              </li>
                           </ul>
                        </div>
                     </li>
                     <li class="campus-map">
                        <a href="https://map.concept3d.com/?id=1108#!ct/0" target="_blank">Map</a>
                     </li>
                  </ul>
               </div>
            </div>
         </div>
         <div id="rave-alert" style="display: none;"></div>
         <div id="page-header">
            <div class="container">
               <div id="parent-mobile-bar" class="mobile-bar visible-phone"></div>
               <div class="mobile-bar visible-phone">
                  <ul class="nav">
                     <li class="menu"><a href="javascript:void(0)" data-target="#breadcrumb" data-toggle="tab">Menu</a></li>
                     <li class="pull-right search"><a href="#search" data-toggle="tab" title="Search"><i class="icon icon-search-gsu"></i></a></li>
                     <li class="pull-right"><a href="https://www.gsu.edu/a-z-index/" title="A-Z Index of Websites"><i class="icon icon-az"></i></a></li>
                     <li class="pull-right"><a href="https://campusdirectory.gsu.edu/" title="Campus Directory"><i class="icon icon-phone-gsu"></i></a></li>
                     <li class="pull-right"><a href="https://map.concept3d.com/?id=1108#!ct/0" title="Campus Map"><i class="icon icon-campus-map"></i></a></li>
                     <li class="pull-right"><a href="https://www.gsu.edu/" title="Georgia State Homepage"><i class="icon icon-home-gsu"></i></a></li>
                  </ul>
                  <div class="tab-content">
                     <div class="tab-pane" id="breadcrumb">
                        <div class="menu-homepage-menus-container">
                           <ul id="menu-homepage-menus" class="menu">
                              <li id="menu-item-800" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-800">
                                 <a href="https://international.gsu.edu/about-us/">About Us</a>
                                 <ul class="sub-menu">
                                    <li id="menu-item-7734" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-7734"><a href="https://international.gsu.edu/associate-provost/">Associate Provost for International Initiatives</a></li>
                                    <li id="menu-item-10655" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-10655"><a href="https://international.gsu.edu/directory/">Staff Directory</a></li>
                                    <li id="menu-item-10192" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-10192"><a href="https://international.gsu.edu/resources/contact-us/">Contact Us</a></li>
                                 </ul>
                              </li>
                              <li id="menu-item-685" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-685"><a href="http://mystudyabroad.gsu.edu">Study Abroad</a></li>
                              <li id="menu-item-686" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-686">
                                 <a href="https://international.gsu.edu/students-and-scholars/">Students &amp; Scholars</a>
                                 <ul class="sub-menu">
                                    <li id="menu-item-9944" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-9944">
                                       <a href="http://international.gsu.edu/perimeter/">Perimeter College – International Initiatives</a>
                                       <ul class="sub-menu">
                                          <li id="menu-item-10359" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-10359"><a href="http://mystudyabroad.gsu.edu/perimeter">Study Abroad Program Options for Perimeter College Students</a></li>
                                          <li id="menu-item-9943" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-9943"><a href="https://international.gsu.edu/mina/">Mentoring Initiative for New Americans (MINA)</a></li>
                                       </ul>
                                    </li>
                                    <li id="menu-item-725" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-725"><a href="http://isss.gsu.edu/">International Students &amp; Scholars</a></li>
                                    <li id="menu-item-7740" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-7740">
                                       <a href="https://international.gsu.edu/faculty-mentoring-program/">Faculty Programs</a>
                                       <ul class="sub-menu">
                                          <li id="menu-item-11669" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-11669"><a href="https://international.gsu.edu/faculty-mentoring-program/fmp/">Faculty Mentoring Program</a></li>
                                          <li id="menu-item-11671" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-11671"><a href="https://international.gsu.edu/faculty-mentoring-program/FMPLab/">Faculty Mentoring Program – Lab</a></li>
                                          <li id="menu-item-11672" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-11672"><a href="https://international.gsu.edu/faculty-mentoring-program/fmpsummer/">Summer Faculty Mentoring Program</a></li>
                                          <li id="menu-item-11731" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-11731"><a href="https://international.gsu.edu/faculty-mentoring-program/fmppd/">Faculty Pedagogical Summer Program</a></li>
                                          <li id="menu-item-13582" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-13582"><a href="https://international.gsu.edu/faculty-mentoring-program/photos/">Photos Gallery</a></li>
                                          <li id="menu-item-14453" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-14453"><a href="https://international.gsu.edu/faculty-programs-quick-facts/">Faculty Programs Quick Facts</a></li>
                                          <li id="menu-item-13577" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-13577"><a href="https://international.gsu.edu/faculty-mentoring-program/frequently-asked-questions/">Frequently Asked Questions</a></li>
                                       </ul>
                                    </li>
                                    <li id="menu-item-691" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-691">
                                       <a href="https://international.gsu.edu/summerinstitute/">Summer Institute</a>
                                       <ul class="sub-menu">
                                          <li id="menu-item-695" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-695"><a href="https://international.gsu.edu/summerinstitute/program-details-office-of-international-initiatives-georgia-state-university/">Program Details &amp; Deadlines</a></li>
                                          <li id="menu-item-9273" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-9273"><a href="https://international.gsu.edu/excursions-activities/">Excursions &amp; Activities</a></li>
                                          <li id="menu-item-696" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-696"><a href="https://international.gsu.edu/summerinstitute/courses/">Courses</a></li>
                                          <li id="menu-item-9262" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-9262"><a href="https://international.gsu.edu/housing-meal-plan/">Housing &amp; Meal Plan</a></li>
                                          <li id="menu-item-697" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-697"><a href="https://international.gsu.edu/summerinstitute/applicationinstructions/">Application Instructions</a></li>
                                          <li id="menu-item-11196" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-11196"><a href="https://international.gsu.edu/summerinstitute/summer-institute-scholarship/">Summer Institute (SI) Scholarship</a></li>
                                          <li id="menu-item-3245" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-3245"><a href="https://international.gsu.edu/summerinstitute/resources/">Resources</a></li>
                                          <li id="menu-item-3080" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-3080"><a href="https://international.gsu.edu/summerinstitute/testimonials/">Testimonials</a></li>
                                          <li id="menu-item-9370" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-9370"><a href="https://international.gsu.edu/summer-institute-photo-gallery/">Summer Institute Photo Gallery</a></li>
                                          <li id="menu-item-14084" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-14084"><a href="https://international.gsu.edu/the-global-ambassador-program/">The Global Ambassador Program</a></li>
                                          <li id="menu-item-3268" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-3268"><a href="https://international.gsu.edu/summerinstitute/frequently-asked-questions/">Frequently Asked Questions</a></li>
                                       </ul>
                                    </li>
                                    <li id="menu-item-9053" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-9053">
                                       <a href="https://international.gsu.edu/students-and-scholars/ispeed/">iSPEED (International Summer Program to Explore Experience Discover)</a>
                                       <ul class="sub-menu">
                                          <li id="menu-item-14111" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-14111"><a href="https://international.gsu.edu/program-details/">Program Details</a></li>
                                          <li id="menu-item-9058" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-9058"><a href="https://international.gsu.edu/students-and-scholars/ispeed/apply/">iSPEED Application</a></li>
                                          <li id="menu-item-9119" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-9119"><a href="https://international.gsu.edu/florida-trip/">Florida Trip</a></li>
                                          <li id="menu-item-12226" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-12226"><a href="https://international.gsu.edu/ispeed-workshops/">Workshops</a></li>
                                          <li id="menu-item-12225" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-12225"><a href="https://international.gsu.edu/ispeed-excursions-activities/">Excursions &amp; Activities</a></li>
                                          <li id="menu-item-12224" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-12224"><a href="https://international.gsu.edu/ispeed-meals-accomodation/">Meals &amp; Accommodation</a></li>
                                          <li id="menu-item-12269" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-12269"><a href="https://international.gsu.edu/fee-payment/">Fee Payment</a></li>
                                          <li id="menu-item-14222" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-14222"><a href="https://international.gsu.edu/global-ambassador-program/">Global Ambassador Program</a></li>
                                       </ul>
                                    </li>
                                    <li id="menu-item-7867" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-7867">
                                       <a href="https://international.gsu.edu/globalambassador/">The Global Ambassador Program</a>
                                       <ul class="sub-menu">
                                          <li id="menu-item-9029" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-9029"><a href="https://international.gsu.edu/global-ambassador-program-application/">Global Ambassador Program Application</a></li>
                                          <li id="menu-item-15035" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-15035"><a href="https://international.gsu.edu/gap-ambassador-buddy-match-form/">GAP Ambassador Buddy Match Form</a></li>
                                          <li id="menu-item-8098" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-8098"><a href="https://international.gsu.edu/gap-travel-waiver-form/">Global Ambassador Travel Waiver Form</a></li>
                                          <li id="menu-item-15152" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-15152"><a href="https://international.gsu.edu/gap-service/">GAP Service</a></li>
                                          <li id="menu-item-8129" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-8129"><a href="https://international.gsu.edu/gap-exit-survey/">Global Ambassador Program Exit Survey</a></li>
                                       </ul>
                                    </li>
                                    <li id="menu-item-690" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-690">
                                       <a href="https://international.gsu.edu/students-and-scholars/international-visitors/">International Visitors</a>
                                       <ul class="sub-menu">
                                          <li id="menu-item-693" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-693"><a href="https://international.gsu.edu/students-and-scholars/international-visitors/protocol-considerations-for-hosting-international-visitors-office-of-international-initiatives-georgia-state-university/">Protocol Considerations for Hosting International Visitors</a></li>
                                          <li id="menu-item-692" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-692"><a href="https://international.gsu.edu/students-and-scholars/international-visitors/guidelines-for-hosting-international-visitors-office-of-international-initiatives-georgia-state-university/">Guidelines for Hosting International Visitors</a></li>
                                          <li id="menu-item-3279" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-3279"><a href="http://ipaweb.gsu.edu/search/Intl_Visitors2/TravelForm_New3/IntlTravelBasic.aspx">International Visitors Form</a></li>
                                       </ul>
                                    </li>
                                 </ul>
                              </li>
                              <li id="menu-item-687" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-687">
                                 <a href="https://international.gsu.edu/initiatives/">Initiatives</a>
                                 <ul class="sub-menu">
                                    <li id="menu-item-12047" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-12047">
                                       <a href="https://international.gsu.edu/virtualexchange/">Virtual Exchange Initiative at Georgia State</a>
                                       <ul class="sub-menu">
                                          <li id="menu-item-12921" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-12921"><a href="https://international.gsu.edu/virtualexchange/recent-projects/">Recent Projects</a></li>
                                          <li id="menu-item-12925" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-12925"><a href="https://international.gsu.edu/virtualexchange/participants-and-partners/">Participants and Partners</a></li>
                                          <li id="menu-item-12937" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-12937"><a href="https://international.gsu.edu/benefits-inspiration/">Benefits of Virtual Exchange</a></li>
                                          <li id="menu-item-12087" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-12087"><a href="https://international.gsu.edu/virtualexchange/history-of-virtualexchange/">History of Virtual Exchange and COIL at Georgia State Univeristy</a></li>
                                          <li id="menu-item-12957" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-12957"><a href="https://international.gsu.edu/virtualexchange/training-and-support/">Training and Support</a></li>
                                          <li id="menu-item-14999" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-14999"><a href="http://sites.gsu.edu/globalfatlc/">The Global Engagement Faculty Teaching and Learning Community</a></li>
                                          <li id="menu-item-12080" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-12080"><a href="https://international.gsu.edu/virtualexchange/interested-in-virtualexchange/">Contact Us – Virtual Exchange</a></li>
                                       </ul>
                                    </li>
                                    <li id="menu-item-8467" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-8467"><a href="http://ci.gsu.edu">Confucius Institute at Georgia State University</a></li>
                                    <li id="menu-item-7376" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-7376"><a href="https://international.gsu.edu/initiatives/global-presentation-series/">Global Presentation Series</a></li>
                                    <li id="menu-item-701" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-701">
                                       <a href="https://iew.gsu.edu">International Education Week (IEW)</a>
                                       <ul class="sub-menu">
                                          <li id="menu-item-11048" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-11048"><a href="https://international.gsu.edu/ihr/">2018 International Honorary Reception</a></li>
                                          <li id="menu-item-2638" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-2638"><a href="https://international.gsu.edu/initiatives/international-education-week/awards/">2018 International Education Awards</a></li>
                                       </ul>
                                    </li>
                                    <li id="menu-item-698" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-698"><a href="https://international.gsu.edu/initiatives/strategic-plan/">International Initiatives Strategic Plan 2018 – 2021</a></li>
                                    <li id="menu-item-6677" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-6677"><a target="_blank" href="http://wacatl.robinson.gsu.edu">World Affairs Council of Atlanta</a></li>
                                 </ul>
                              </li>
                              <li id="menu-item-688" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-688">
                                 <a href="https://international.gsu.edu/partnerships/">Partnerships</a>
                                 <ul class="sub-menu">
                                    <li id="menu-item-11222" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-11222"><a target="_blank" href="https://mygsu.sharepoint.com/sites/I-Agree/SitePages/I-Agree.aspx">I-Agree</a></li>
                                    <li id="menu-item-11371" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-11371"><a target="_blank" href="https://international.gsu.edu/initiatives/pantherglobal/">PantherGLOBAL</a></li>
                                    <li id="menu-item-1497" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-1497">
                                       <a href="https://international.gsu.edu/partner-universities-main-page/">Partner Universities</a>
                                       <ul class="sub-menu">
                                          <li id="menu-item-1879" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1879"><a href="https://international.gsu.edu/africa-accordion/">African Partner Universities</a></li>
                                          <li id="menu-item-1884" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1884"><a href="https://international.gsu.edu/asia-accordion/">Asian Partner Universities</a></li>
                                          <li id="menu-item-1890" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1890"><a href="https://international.gsu.edu/europe-accordion/">European Partner Universities</a></li>
                                          <li id="menu-item-1892" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1892"><a href="https://international.gsu.edu/latin-america-accordion/">Latin American Partner Universities</a></li>
                                          <li id="menu-item-7416" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-7416"><a href="https://international.gsu.edu/north-american-partner-universities/">North American Partner Universities</a></li>
                                       </ul>
                                    </li>
                                    <li id="menu-item-1332" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-1332">
                                       <a href="https://international.gsu.edu/initiatives/funding-international-activities/">Funding International Activities</a>
                                       <ul class="sub-menu">
                                          <li id="menu-item-10315" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-10315"><a href="https://international.gsu.edu/fipe-2020/">Faculty International Partnership Engagement (FIPE) Grants</a></li>
                                          <li id="menu-item-9733" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-9733"><a href="http://ipaweb.gsu.edu/search/Funding/RequestFunding.aspx">Funding Request Form</a></li>
                                          <li id="menu-item-9865" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-9865"><a href="https://mygsu.sharepoint.com/sites/I-Agree/International_Grant_Opportunities/Lists/InternationalGrantOpp/AllItems.aspx?Filter=1&amp;View=%7bD00ECE3F-C57F-4C33-8D77-0AC4D5075A2C%7d">International Grant Opportunities</a></li>
                                       </ul>
                                    </li>
                                    <li id="menu-item-1948" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-1948">
                                       <a href="https://international.gsu.edu/partnerships-at-georgia-state-university/">Guidelines and Procedures for International Partnership Agreements</a>
                                       <ul class="sub-menu">
                                          <li id="menu-item-1787" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1787"><a href="https://international.gsu.edu/initiating-agreements/">Initiating Agreements</a></li>
                                       </ul>
                                    </li>
                                    <li id="menu-item-1781" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1781"><a href="https://international.gsu.edu/agreement-resources/">Partnership Resources</a></li>
                                    <li id="menu-item-711" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-711"><a href="http://ipaweb.gsu.edu/Search/">Partnership Database</a></li>
                                 </ul>
                              </li>
                              <li id="menu-item-689" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-689">
                                 <a href="https://international.gsu.edu/resources/">Resources</a>
                                 <ul class="sub-menu">
                                    <li id="menu-item-700" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-700"><a href="https://international.gsu.edu/initiatives/centers-and-institutes/">International Centers and Institutes</a></li>
                                    <li id="menu-item-8836" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-8836"><a href="http://events.gsu.edu/international-center/">International Center Conference Room Reservations</a></li>
                                    <li id="menu-item-9840" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-9840"><a href="https://international.gsu.edu/international-travel-2/">International Travel</a></li>
                                    <li id="menu-item-4058" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-4058"><a href="https://international.gsu.edu/travel-advisory-countries/">Travel Advisory Policy and Form</a></li>
                                    <li id="menu-item-9769" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-9769"><a href="http://ipaweb.gsu.edu/Search/">Partnership Database</a></li>
                                    <li id="menu-item-9772" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-9772"><a href="http://ipaweb.gsu.edu/search/Funding/RequestFunding.aspx">Funding Request Form</a></li>
                                    <li id="menu-item-9864" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-9864"><a href="https://mygsu.sharepoint.com/sites/I-Agree/International_Grant_Opportunities/Lists/InternationalGrantOpp/AllItems.aspx?Filter=1&amp;View=%7bD00ECE3F-C57F-4C33-8D77-0AC4D5075A2C%7d">International Grant Opportunities</a></li>
                                    <li id="menu-item-723" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-723"><a href="http://ipaweb.gsu.edu/search/TravelForm_New/TravelForm_New/IntlTravelBasic.aspx">Report International Travel</a></li>
                                 </ul>
                              </li>
                              <li id="menu-item-2702" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-home current-menu-item page_item page-item-6 current_page_item menu-item-2702"><a href="https://international.gsu.edu/">Home</a></li>
                           </ul>
                        </div>
                     </div>
                     <div class="tab-pane" id="search">
                        <form action="https://www.gsu.edu/search-georgia-state/" method="get" name="searchform" class="form-search" id="searchform">
                           <input type="hidden" value="*" name="givennames">
                           <input type="hidden" value="*" name="sns">
                           <input type="hidden" value="All" name="search" id="a1212">
                           <input type="hidden" value="" name="sn" id="sn">
                           <input type="hidden" value="" name="givenname" id="givenname">
                           <label for="q" class="hidden-comp">Search/Directory</label>
                           <input class="input-medium" placeholder="Search" type="text" value="" name="q" size="16" title="Search Georgia State">
                        </form>
                     </div>
                  </div>
                  <ul class="nav">
                     <li><a href="https://www.gsu.edu/email">Email</a></li>
                     <li><a href="https://www.gosolar.gsu.edu/webforstudent.htm">GoSOLAR</a></li>
                     <li><a href="https://gastate.view.usg.edu/">iCollege</a></li>
                     <li><a href="https://paws.gsu.edu/">PAWS</a></li>
                     <li class="album88"><a href="https://www.publicbroadcasting.net/wras/ppr/wras2.m3u"><i class="icon-album88"></i>88</a></li>
                  </ul>
               </div>
               <div class="row" style="margin-top: 44px;">
                  <div id="logo" class="span">
                     <a href="https://international.gsu.edu/" title="International Initiatives" rel="home">
                     <img src="http://international.gsu.edu/files/2013/04/title_white-oii.png" alt="International Initiatives">
                     </a>
                  </div>
                  <div id="global-nav" class="span hidden-phone">
                     <div class="menu-homepage-menus-container">
                        <ul id="menu-homepage-menus-1" class="menu">
                           <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-800">
                              <a href="https://international.gsu.edu/about-us/">
                                 About Us
                                 <div class="sub-title"></div>
                              </a>
                              <ul class="sub-menu">
                                 <div class="first column" style="width:33%; float: left;">
                                    <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-7734 dontsplit">
                                       <a href="https://international.gsu.edu/associate-provost/">
                                          Associate Provost for International Initiatives
                                          <div class="sub-title"></div>
                                       </a>
                                    </li>
                                 </div>
                                 <div class=" column" style="width:33%; float: left;">
                                    <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-10655 dontsplit">
                                       <a href="https://international.gsu.edu/directory/">
                                          Staff Directory
                                          <div class="sub-title"></div>
                                       </a>
                                    </li>
                                 </div>
                                 <div class="last  column" style="width:33%; float: left;">
                                    <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-10192 dontsplit">
                                       <a href="https://international.gsu.edu/resources/contact-us/">
                                          Contact Us
                                          <div class="sub-title"></div>
                                       </a>
                                    </li>
                                 </div>
                                 <br style="clear:both;">
                              </ul>
                           </li>
                           <li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-685">
                              <a href="http://mystudyabroad.gsu.edu">
                                 Study Abroad
                                 <div class="sub-title"></div>
                              </a>
                           </li>
                           <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-686">
                              <a href="https://international.gsu.edu/students-and-scholars/">
                                 Students &amp; Scholars
                                 <div class="sub-title"></div>
                              </a>
                              <ul class="sub-menu">
                                 <div class="first column" style="width:33%; float: left;">
                                    <li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-9944 dontsplit">
                                       <a href="http://international.gsu.edu/perimeter/">
                                          Perimeter College – International Initiatives
                                          <div class="sub-title"></div>
                                       </a>
                                       <ul class="sub-menu">
                                          <li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-10359">
                                             <a href="http://mystudyabroad.gsu.edu/perimeter">
                                                Study Abroad Program Options for Perimeter College Students
                                                <div class="sub-title"></div>
                                             </a>
                                          </li>
                                          <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-9943">
                                             <a href="https://international.gsu.edu/mina/">
                                                Mentoring Initiative for New Americans (MINA)
                                                <div class="sub-title"></div>
                                             </a>
                                          </li>
                                       </ul>
                                    </li>
                                    <li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-725 dontsplit">
                                       <a href="http://isss.gsu.edu/">
                                          International Students &amp; Scholars
                                          <div class="sub-title"></div>
                                       </a>
                                    </li>
                                    <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-7740 dontsplit">
                                       <a href="https://international.gsu.edu/faculty-mentoring-program/">
                                          Faculty Programs
                                          <div class="sub-title"></div>
                                       </a>
                                       <ul class="sub-menu">
                                          <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-11669">
                                             <a href="https://international.gsu.edu/faculty-mentoring-program/fmp/">
                                                Faculty Mentoring Program
                                                <div class="sub-title"></div>
                                             </a>
                                          </li>
                                          <li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-11671">
                                             <a href="https://international.gsu.edu/faculty-mentoring-program/FMPLab/">
                                                Faculty Mentoring Program – Lab
                                                <div class="sub-title"></div>
                                             </a>
                                          </li>
                                          <li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-11672">
                                             <a href="https://international.gsu.edu/faculty-mentoring-program/fmpsummer/">
                                                Summer Faculty Mentoring Program
                                                <div class="sub-title"></div>
                                             </a>
                                          </li>
                                          <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-11731">
                                             <a href="https://international.gsu.edu/faculty-mentoring-program/fmppd/">
                                                Faculty Pedagogical Summer Program
                                                <div class="sub-title"></div>
                                             </a>
                                          </li>
                                          <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-13582">
                                             <a href="https://international.gsu.edu/faculty-mentoring-program/photos/">
                                                Photos Gallery
                                                <div class="sub-title"></div>
                                             </a>
                                          </li>
                                          <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-14453">
                                             <a href="https://international.gsu.edu/faculty-programs-quick-facts/">
                                                Faculty Programs Quick Facts
                                                <div class="sub-title"></div>
                                             </a>
                                          </li>
                                          <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-13577">
                                             <a href="https://international.gsu.edu/faculty-mentoring-program/frequently-asked-questions/">
                                                Frequently Asked Questions
                                                <div class="sub-title"></div>
                                             </a>
                                          </li>
                                       </ul>
                                    </li>
                                 </div>
                                 <div class=" column" style="width:33%; float: left;">
                                    <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-691 dontsplit">
                                       <a href="https://international.gsu.edu/summerinstitute/">
                                          Summer Institute
                                          <div class="sub-title"></div>
                                       </a>
                                       <ul class="sub-menu">
                                          <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-695">
                                             <a href="https://international.gsu.edu/summerinstitute/program-details-office-of-international-initiatives-georgia-state-university/">
                                                Program Details &amp; Deadlines
                                                <div class="sub-title"></div>
                                             </a>
                                          </li>
                                          <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-9273">
                                             <a href="https://international.gsu.edu/excursions-activities/">
                                                Excursions &amp; Activities
                                                <div class="sub-title"></div>
                                             </a>
                                          </li>
                                          <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-696">
                                             <a href="https://international.gsu.edu/summerinstitute/courses/">
                                                Courses
                                                <div class="sub-title"></div>
                                             </a>
                                          </li>
                                          <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-9262">
                                             <a href="https://international.gsu.edu/housing-meal-plan/">
                                                Housing &amp; Meal Plan
                                                <div class="sub-title"></div>
                                             </a>
                                          </li>
                                          <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-697">
                                             <a href="https://international.gsu.edu/summerinstitute/applicationinstructions/">
                                                Application Instructions
                                                <div class="sub-title"></div>
                                             </a>
                                          </li>
                                          <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-11196">
                                             <a href="https://international.gsu.edu/summerinstitute/summer-institute-scholarship/">
                                                Summer Institute (SI) Scholarship
                                                <div class="sub-title"></div>
                                             </a>
                                          </li>
                                          <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-3245">
                                             <a href="https://international.gsu.edu/summerinstitute/resources/">
                                                Resources
                                                <div class="sub-title"></div>
                                             </a>
                                          </li>
                                          <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-3080">
                                             <a href="https://international.gsu.edu/summerinstitute/testimonials/">
                                                Testimonials
                                                <div class="sub-title"></div>
                                             </a>
                                          </li>
                                          <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-9370">
                                             <a href="https://international.gsu.edu/summer-institute-photo-gallery/">
                                                Summer Institute Photo Gallery
                                                <div class="sub-title"></div>
                                             </a>
                                          </li>
                                          <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-14084">
                                             <a href="https://international.gsu.edu/the-global-ambassador-program/">
                                                The Global Ambassador Program
                                                <div class="sub-title"></div>
                                             </a>
                                          </li>
                                          <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-3268">
                                             <a href="https://international.gsu.edu/summerinstitute/frequently-asked-questions/">
                                                Frequently Asked Questions
                                                <div class="sub-title"></div>
                                             </a>
                                          </li>
                                       </ul>
                                    </li>
                                    <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-9053 dontsplit">
                                       <a href="https://international.gsu.edu/students-and-scholars/ispeed/">
                                          iSPEED (International Summer Program to Explore Experience Discover)
                                          <div class="sub-title"></div>
                                       </a>
                                       <ul class="sub-menu">
                                          <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-14111">
                                             <a href="https://international.gsu.edu/program-details/">
                                                Program Details
                                                <div class="sub-title"></div>
                                             </a>
                                          </li>
                                          <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-9058">
                                             <a href="https://international.gsu.edu/students-and-scholars/ispeed/apply/">
                                                iSPEED Application
                                                <div class="sub-title"></div>
                                             </a>
                                          </li>
                                          <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-9119">
                                             <a href="https://international.gsu.edu/florida-trip/">
                                                Florida Trip
                                                <div class="sub-title"></div>
                                             </a>
                                          </li>
                                          <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-12226">
                                             <a href="https://international.gsu.edu/ispeed-workshops/">
                                                Workshops
                                                <div class="sub-title"></div>
                                             </a>
                                          </li>
                                          <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-12225">
                                             <a href="https://international.gsu.edu/ispeed-excursions-activities/">
                                                Excursions &amp; Activities
                                                <div class="sub-title"></div>
                                             </a>
                                          </li>
                                          <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-12224">
                                             <a href="https://international.gsu.edu/ispeed-meals-accomodation/">
                                                Meals &amp; Accommodation
                                                <div class="sub-title"></div>
                                             </a>
                                          </li>
                                          <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-12269">
                                             <a href="https://international.gsu.edu/fee-payment/">
                                                Fee Payment
                                                <div class="sub-title"></div>
                                             </a>
                                          </li>
                                          <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-14222">
                                             <a href="https://international.gsu.edu/global-ambassador-program/">
                                                Global Ambassador Program
                                                <div class="sub-title"></div>
                                             </a>
                                          </li>
                                       </ul>
                                    </li>
                                 </div>
                                 <div class="last  column" style="width:33%; float: left;">
                                    <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-7867 dontsplit">
                                       <a href="https://international.gsu.edu/globalambassador/">
                                          The Global Ambassador Program
                                          <div class="sub-title"></div>
                                       </a>
                                       <ul class="sub-menu">
                                          <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-9029">
                                             <a href="https://international.gsu.edu/global-ambassador-program-application/">
                                                Global Ambassador Program Application
                                                <div class="sub-title"></div>
                                             </a>
                                          </li>
                                          <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-15035">
                                             <a href="https://international.gsu.edu/gap-ambassador-buddy-match-form/">
                                                GAP Ambassador Buddy Match Form
                                                <div class="sub-title"></div>
                                             </a>
                                          </li>
                                          <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-8098">
                                             <a href="https://international.gsu.edu/gap-travel-waiver-form/">
                                                Global Ambassador Travel Waiver Form
                                                <div class="sub-title"></div>
                                             </a>
                                          </li>
                                          <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-15152">
                                             <a href="https://international.gsu.edu/gap-service/">
                                                GAP Service
                                                <div class="sub-title"></div>
                                             </a>
                                          </li>
                                          <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-8129">
                                             <a href="https://international.gsu.edu/gap-exit-survey/">
                                                Global Ambassador Program Exit Survey
                                                <div class="sub-title"></div>
                                             </a>
                                          </li>
                                       </ul>
                                    </li>
                                    <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-690 dontsplit">
                                       <a href="https://international.gsu.edu/students-and-scholars/international-visitors/">
                                          International Visitors
                                          <div class="sub-title"></div>
                                       </a>
                                       <ul class="sub-menu">
                                          <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-693">
                                             <a href="https://international.gsu.edu/students-and-scholars/international-visitors/protocol-considerations-for-hosting-international-visitors-office-of-international-initiatives-georgia-state-university/">
                                                Protocol Considerations for Hosting International Visitors
                                                <div class="sub-title"></div>
                                             </a>
                                          </li>
                                          <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-692">
                                             <a href="https://international.gsu.edu/students-and-scholars/international-visitors/guidelines-for-hosting-international-visitors-office-of-international-initiatives-georgia-state-university/">
                                                Guidelines for Hosting International Visitors
                                                <div class="sub-title"></div>
                                             </a>
                                          </li>
                                          <li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-3279">
                                             <a href="http://ipaweb.gsu.edu/search/Intl_Visitors2/TravelForm_New3/IntlTravelBasic.aspx">
                                                International Visitors Form
                                                <div class="sub-title"></div>
                                             </a>
                                          </li>
                                       </ul>
                                    </li>
                                 </div>
                                 <br style="clear:both;">
                              </ul>
                           </li>
                           <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-687">
                              <a href="https://international.gsu.edu/initiatives/">
                                 Initiatives
                                 <div class="sub-title"></div>
                              </a>
                              <ul class="sub-menu">
                                 <div class="first column" style="width:33%; float: left;">
                                    <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-12047 dontsplit">
                                       <a href="https://international.gsu.edu/virtualexchange/">
                                          Virtual Exchange Initiative at Georgia State
                                          <div class="sub-title"></div>
                                       </a>
                                       <ul class="sub-menu">
                                          <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-12921">
                                             <a href="https://international.gsu.edu/virtualexchange/recent-projects/">
                                                Recent Projects
                                                <div class="sub-title"></div>
                                             </a>
                                          </li>
                                          <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-12925">
                                             <a href="https://international.gsu.edu/virtualexchange/participants-and-partners/">
                                                Participants and Partners
                                                <div class="sub-title"></div>
                                             </a>
                                          </li>
                                          <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-12937">
                                             <a href="https://international.gsu.edu/benefits-inspiration/">
                                                Benefits of Virtual Exchange
                                                <div class="sub-title"></div>
                                             </a>
                                          </li>
                                          <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-12087">
                                             <a href="https://international.gsu.edu/virtualexchange/history-of-virtualexchange/">
                                                History of Virtual Exchange and COIL at Georgia State Univeristy
                                                <div class="sub-title"></div>
                                             </a>
                                          </li>
                                          <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-12957">
                                             <a href="https://international.gsu.edu/virtualexchange/training-and-support/">
                                                Training and Support
                                                <div class="sub-title"></div>
                                             </a>
                                          </li>
                                          <li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-14999">
                                             <a href="http://sites.gsu.edu/globalfatlc/">
                                                The Global Engagement Faculty Teaching and Learning Community
                                                <div class="sub-title"></div>
                                             </a>
                                          </li>
                                          <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-12080">
                                             <a href="https://international.gsu.edu/virtualexchange/interested-in-virtualexchange/">
                                                Contact Us – Virtual Exchange
                                                <div class="sub-title"></div>
                                             </a>
                                          </li>
                                       </ul>
                                    </li>
                                 </div>
                                 <div class=" column" style="width:33%; float: left;">
                                    <li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-8467 dontsplit">
                                       <a href="http://ci.gsu.edu">
                                          Confucius Institute at Georgia State University
                                          <div class="sub-title"></div>
                                       </a>
                                    </li>
                                    <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-7376 dontsplit">
                                       <a href="https://international.gsu.edu/initiatives/global-presentation-series/">
                                          Global Presentation Series
                                          <div class="sub-title"></div>
                                       </a>
                                    </li>
                                    <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-701 dontsplit">
                                       <a href="https://iew.gsu.edu">
                                          International Education Week (IEW)
                                          <div class="sub-title"></div>
                                       </a>
                                       <ul class="sub-menu">
                                          <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-11048">
                                             <a href="https://international.gsu.edu/ihr/">
                                                2018 International Honorary Reception
                                                <div class="sub-title"></div>
                                             </a>
                                          </li>
                                          <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-2638">
                                             <a href="https://international.gsu.edu/initiatives/international-education-week/awards/">
                                                2018 International Education Awards
                                                <div class="sub-title"></div>
                                             </a>
                                          </li>
                                       </ul>
                                    </li>
                                 </div>
                                 <div class="last  column" style="width:33%; float: left;">
                                    <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-698 dontsplit">
                                       <a href="https://international.gsu.edu/initiatives/strategic-plan/">
                                          International Initiatives Strategic Plan 2018 – 2021
                                          <div class="sub-title"></div>
                                       </a>
                                    </li>
                                    <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-6677 dontsplit">
                                       <a target="_blank" href="http://wacatl.robinson.gsu.edu">
                                          World Affairs Council of Atlanta
                                          <div class="sub-title"></div>
                                       </a>
                                    </li>
                                    <li id="text-3" class="widget widget_text dontsplit">
                                       <div class="textwidget"></div>
                                    </li>
                                 </div>
                                 <br style="clear:both;">
                              </ul>
                           </li>
                           <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-688">
                              <a href="https://international.gsu.edu/partnerships/">
                                 Partnerships
                                 <div class="sub-title"></div>
                              </a>
                              <ul class="sub-menu">
                                 <div class="first column" style="width:33%; float: left;">
                                    <li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-11222 dontsplit">
                                       <a target="_blank" href="https://mygsu.sharepoint.com/sites/I-Agree/SitePages/I-Agree.aspx">
                                          I-Agree
                                          <div class="sub-title"></div>
                                       </a>
                                    </li>
                                    <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-11371 dontsplit">
                                       <a target="_blank" href="https://international.gsu.edu/initiatives/pantherglobal/">
                                          PantherGLOBAL
                                          <div class="sub-title"></div>
                                       </a>
                                    </li>
                                    <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-1497 dontsplit">
                                       <a href="https://international.gsu.edu/partner-universities-main-page/">
                                          Partner Universities
                                          <div class="sub-title"></div>
                                       </a>
                                       <ul class="sub-menu">
                                          <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1879">
                                             <a href="https://international.gsu.edu/africa-accordion/">
                                                African Partner Universities
                                                <div class="sub-title"></div>
                                             </a>
                                          </li>
                                          <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1884">
                                             <a href="https://international.gsu.edu/asia-accordion/">
                                                Asian Partner Universities
                                                <div class="sub-title"></div>
                                             </a>
                                          </li>
                                          <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1890">
                                             <a href="https://international.gsu.edu/europe-accordion/">
                                                European Partner Universities
                                                <div class="sub-title"></div>
                                             </a>
                                          </li>
                                          <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1892">
                                             <a href="https://international.gsu.edu/latin-america-accordion/">
                                                Latin American Partner Universities
                                                <div class="sub-title"></div>
                                             </a>
                                          </li>
                                          <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-7416">
                                             <a href="https://international.gsu.edu/north-american-partner-universities/">
                                                North American Partner Universities
                                                <div class="sub-title"></div>
                                             </a>
                                          </li>
                                       </ul>
                                    </li>
                                 </div>
                                 <div class=" column" style="width:33%; float: left;">
                                    <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-1332 dontsplit">
                                       <a href="https://international.gsu.edu/initiatives/funding-international-activities/">
                                          Funding International Activities
                                          <div class="sub-title"></div>
                                       </a>
                                       <ul class="sub-menu">
                                          <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-10315">
                                             <a href="https://international.gsu.edu/fipe-2020/">
                                                Faculty International Partnership Engagement (FIPE) Grants
                                                <div class="sub-title"></div>
                                             </a>
                                          </li>
                                          <li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-9733">
                                             <a href="http://ipaweb.gsu.edu/search/Funding/RequestFunding.aspx">
                                                Funding Request Form
                                                <div class="sub-title"></div>
                                             </a>
                                          </li>
                                          <li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-9865">
                                             <a href="https://mygsu.sharepoint.com/sites/I-Agree/International_Grant_Opportunities/Lists/InternationalGrantOpp/AllItems.aspx?Filter=1&amp;View=%7bD00ECE3F-C57F-4C33-8D77-0AC4D5075A2C%7d">
                                                International Grant Opportunities
                                                <div class="sub-title"></div>
                                             </a>
                                          </li>
                                       </ul>
                                    </li>
                                    <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-1948 dontsplit">
                                       <a href="https://international.gsu.edu/partnerships-at-georgia-state-university/">
                                          Guidelines and Procedures for International Partnership Agreements
                                          <div class="sub-title"></div>
                                       </a>
                                       <ul class="sub-menu">
                                          <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1787">
                                             <a href="https://international.gsu.edu/initiating-agreements/">
                                                Initiating Agreements
                                                <div class="sub-title"></div>
                                             </a>
                                          </li>
                                       </ul>
                                    </li>
                                    <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1781 dontsplit">
                                       <a href="https://international.gsu.edu/agreement-resources/">
                                          Partnership Resources
                                          <div class="sub-title"></div>
                                       </a>
                                    </li>
                                 </div>
                                 <div class="last  column" style="width:33%; float: left;">
                                    <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-711 dontsplit">
                                       <a href="http://ipaweb.gsu.edu/Search/">
                                          Partnership Database
                                          <div class="sub-title"></div>
                                       </a>
                                    </li>
                                 </div>
                                 <br style="clear:both;">
                              </ul>
                           </li>
                           <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-689">
                              <a href="https://international.gsu.edu/resources/">
                                 Resources
                                 <div class="sub-title"></div>
                              </a>
                              <ul class="sub-menu">
                                 <div class="first column" style="width:33%; float: left;">
                                    <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-700 dontsplit">
                                       <a href="https://international.gsu.edu/initiatives/centers-and-institutes/">
                                          International Centers and Institutes
                                          <div class="sub-title"></div>
                                       </a>
                                    </li>
                                    <li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-8836 dontsplit">
                                       <a href="http://events.gsu.edu/international-center/">
                                          International Center Conference Room Reservations
                                          <div class="sub-title"></div>
                                       </a>
                                    </li>
                                 </div>
                                 <div class=" column" style="width:33%; float: left;">
                                    <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-9840 dontsplit">
                                       <a href="https://international.gsu.edu/international-travel-2/">
                                          International Travel
                                          <div class="sub-title"></div>
                                       </a>
                                    </li>
                                    <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-4058 dontsplit">
                                       <a href="https://international.gsu.edu/travel-advisory-countries/">
                                          Travel Advisory Policy and Form
                                          <div class="sub-title"></div>
                                       </a>
                                    </li>
                                    <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-9769 dontsplit">
                                       <a href="http://ipaweb.gsu.edu/Search/">
                                          Partnership Database
                                          <div class="sub-title"></div>
                                       </a>
                                    </li>
                                 </div>
                                 <div class="last  column" style="width:33%; float: left;">
                                    <li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-9772 dontsplit">
                                       <a href="http://ipaweb.gsu.edu/search/Funding/RequestFunding.aspx">
                                          Funding Request Form
                                          <div class="sub-title"></div>
                                       </a>
                                    </li>
                                    <li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-9864 dontsplit">
                                       <a href="https://mygsu.sharepoint.com/sites/I-Agree/International_Grant_Opportunities/Lists/InternationalGrantOpp/AllItems.aspx?Filter=1&amp;View=%7bD00ECE3F-C57F-4C33-8D77-0AC4D5075A2C%7d">
                                          International Grant Opportunities
                                          <div class="sub-title"></div>
                                       </a>
                                    </li>
                                    <li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-723 dontsplit">
                                       <a href="http://ipaweb.gsu.edu/search/TravelForm_New/TravelForm_New/IntlTravelBasic.aspx">
                                          Report International Travel
                                          <div class="sub-title"></div>
                                       </a>
                                    </li>
                                 </div>
                                 <br style="clear:both;">
                              </ul>
                           </li>
                           <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-home current-menu-item page_item page-item-6 current_page_item menu-item-2702">
                              <a href="https://international.gsu.edu/">
                                 Home
                                 <div class="sub-title"></div>
                              </a>
                           </li>
                        </ul>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <br /><br />
      <div id="content" class="home">
         <div id="main-content" style="width:80%; margin:auto">
            <h1 style="font-family:'Times New Roman'; font-size:32px; background-color:#1e2fc9; color:white; text-align:center; letter-spacing:3px; border-top: 5px solid #780101; border-bottom: 5px solid #780101">INTERNATIONAL FACULTY PROFILE</h1>
            <br />
            <form id="form1" runat="server">
                <asp:HiddenField runat="server" ID="hfPosition" Value="" />

               <div class="column left" style="background-color:none;">
                  <asp:Panel ID="Panel1" runat="server" HorizontalAlign="Center"></asp:Panel>
                  <br />
                  <table>
                     <tr>
                        <td>
                           <asp:Label ID="Label9" runat="server" style="width:60%"><b>Profile Picture:</b></asp:Label>
                        </td>
                        <td>
                           <asp:FileUpload ID="profilePic" runat="server" style="width:100%"/>
                           <asp:Button runat="server" id="UploadButton" text="Upload" onclick="uploadPic" />



                        </td>
                     </tr>
                     <tr>
                        <%--<td>
                           <asp:Button id="UploadBtn" Text="Upload Picture" runat="server" style="width:100%" OnClick="UploadBtn_Click" />                                   
                           </td>--%>
                        <td colspan="2">
                           <asp:Label ID="profilePic_uploadStatus" runat="server" style="width:100%"></asp:Label>
                        </td>
                     </tr>
                      <tr>
                           <asp:HyperLink ID="Profilepi" runat="server" title="Please click here" ></asp:HyperLink>

                      </tr>
                  </table>
                  <br />
                  <asp:HyperLink Width="100%" class="accordion" ID="contact" runat="server" title="Please click here to view the links" NavigateUrl="javascript:ShowHideDivOnButtonClicktest1();">CONTACT</asp:HyperLink>
                  <div style="text-align:left;" id="facultyContact" hidden="hidden">
                     <table>
                        <tr>
                           <td>
                              &nbsp;&nbsp;&nbsp;
                              <asp:Label ID="Label3" runat="server" style="display:inline;"><b>Email Id:</b></asp:Label>
                           </td>
                           <td>
                              <asp:TextBox ID="email" runat="server" style="margin-top:2px; margin-bottom:2px; width:100%"></asp:TextBox>
                           </td>
                        </tr>
                        <tr>
                           <td>
                              &nbsp;&nbsp;&nbsp;
                              <asp:Label ID="Label4" runat="server" style="display:inline;"><b>Phone:</b></asp:Label>
                           </td>
                           <td>
                              <asp:TextBox ID="phone" runat="server" style="margin-top:2px; margin-bottom:2px; width:100%"></asp:TextBox>
                           </td>
                        </tr>
                     </table>
                  </div>
                  <br />
                  <asp:HyperLink Width="100%" class="accordion" ID="researchExpertise" runat="server" title="Click here to enter Research Expertise" NavigateUrl="javascript:ShowHideDivOnButtonClicktest2();">RESEARCH EXPERTISE</asp:HyperLink>
                  <div style="text-align:left;" id="research" hidden="hidden">
                     <asp:Label ID="Label11" runat="server">Please enter your areas of Research</asp:Label>
                      <asp:gridview ID="researchTable" DataKeyNames="ID" runat="server" ShowFooter="true" AutoGenerateColumns="false" GridLines="None" BorderStyle="None" 
        
      
        
                          OnRowDeleting="DeleteResearchExpertise_Click" OnSelectedIndexChanged="researchTable_SelectedIndexChanged">
                        <Columns>
                          
                           <asp:TemplateField HeaderText="">
                              <ItemTemplate>
                                   <asp:TextBox ID="research1"  placeholder="Research Expertise"  runat="server" style="margin-top:2px; margin-bottom:2px; display:inline; width:95%" Text='<%#Eval("Research Expertise") %>'></asp:TextBox>
                              
                              </ItemTemplate>
                              <FooterStyle HorizontalAlign="Right" />
                              <FooterTemplate>
                                 <asp:Button  runat="server" ID="ButtonAddResearchExpertise" Text="Add" OnClick="ButtonAdd_Click" />
                                 <%--<asp:Button ID="ButtonDelete" runat="server" Text="Delete Row" OnClick="ButtonDelete_Click" />--%>
                              </FooterTemplate>
                           </asp:TemplateField>
                           <asp:CommandField ShowDeleteButton="True" ButtonType="Button" />
                        </Columns>
                     </asp:gridview>
                     
                     <br />
                   
                  </div>
                  <br />
                  <asp:HyperLink Width="100%" class="accordion" ID="relevantCourses" runat="server" title="Please click here to view the links" NavigateUrl="javascript:ShowHideDivOnButtonClicktest3();">RELEVANT COURSES TAUGHT</asp:HyperLink>
                  <div style="text-align:left;" id="courses" hidden="hidden">
                     <asp:Label ID="Label12" runat="server">Please enter the relevant courses taught</asp:Label>
                     
                       <asp:gridview ID="relevantcourse" DataKeyNames="ID" runat="server" 
                           
                        
                           ShowFooter="true" AutoGenerateColumns="false" GridLines="None" BorderStyle="None" OnRowDeleting="DeleteRelevantCourse_Click" RowStyle-BackColor="#d7d5d5">
                        <Columns>
                          
                          
                           <asp:TemplateField HeaderText="">
                              <ItemTemplate>
                                
                              <asp:TextBox ID="courseNumber1" runat="server" style="margin-top:2px; margin-bottom:2px; display:inline; width:95%" placeholder="CRN" Text='<%#Eval("Course Number") %>'></asp:TextBox>
                          </ItemTemplate>
                              </asp:TemplateField>
                                <asp:TemplateField HeaderText="">
                                  <ItemTemplate>
                              <asp:TextBox ID="course1" runat="server" style="margin-top:2px; margin-bottom:2px; width:100%" placeholder="Name" Text='<%#Eval("Course Name") %>'></asp:TextBox>
                           
                              
                              </ItemTemplate>
                                   
                              <FooterStyle HorizontalAlign="Right" />
                              <FooterTemplate>
                                 <asp:Button ID="ButtonAddRelevantLecture" runat="server" Text="Add" OnClick="ButtonAdd_Click" />
                                
                              </FooterTemplate>
                           </asp:TemplateField>
                           <asp:CommandField ShowDeleteButton="True" ButtonType="Button" />
                        </Columns>
                     </asp:gridview>
                     <br />
                  </div>
               </div>
               <div class="column right" style="background-color:none; border-left:3px solid #780101;">
                  <table style="font-size:15px;">
                     <tr>
                        <td>
                           <asp:Label ID="Label1" runat="server"><b>First Name:</b></asp:Label>
                        </td>
                        <td>
                           <asp:TextBox ID="firstName" runat="server" style="margin-top:2px; margin-bottom:2px; width:100%"></asp:TextBox>
                        </td>
                        <td>
                           <asp:Label ID="Label2" runat="server"><b>Last Name:</b></asp:Label>
                        </td>
                        <td>
                           <asp:TextBox ID="lastName" runat="server" style="margin-top:2px; margin-bottom:2px; width:100%"></asp:TextBox>
                        </td>
                     </tr>
                     <tr>
                        <td colspan="1">
                           <asp:Label ID="Label5" runat="server"><b>Designation:</b></asp:Label>
                        </td>
                        <td colspan="3">
                           <asp:TextBox ID="designation" runat="server" style="margin-top:2px; margin-bottom:2px; width:100%"></asp:TextBox>
                        </td>
                     </tr>
                     <tr>
                        <td>
                           <asp:Label ID="Label6" runat="server"><b>College:</b></asp:Label>
                        </td>
                        <td>
                           <asp:TextBox ID="college" runat="server" style="margin-top:2px; margin-bottom:2px; width:100%"></asp:TextBox>
                        </td>
                        <td>
                           <asp:Label ID="Label7" runat="server"><b>Department:</b></asp:Label>
                        </td>
                        <td>
                           <asp:TextBox ID="department" runat="server" style="margin-top:2px; margin-bottom:2px; width:100%"></asp:TextBox>
                        </td>
                     </tr>
                  </table>
                  <br />
                  <asp:HyperLink Width="100%" class="accordion" ID="facultySnapshot" runat="server" title="Please Click here to enter Faculty Snapshot" NavigateUrl="javascript:ShowHideDivOnButtonClicktest4();">Faculty Snapshot</asp:HyperLink>
                  <div style="text-align:left;" id="faculty" hidden="hidden">
                     <ul style="list-style-type:none">
                        <li>
                           &#9658;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                           <asp:HyperLink Width="90%" ID="education" runat="server" title="Please Click here to enter Highest Education" NavigateUrl="javascript:ShowHideDivOnButtonClicktest14();">Highest Education</asp:HyperLink>
                           <div style="text-align:left;" id="highestEducation" hidden="hidden">
                              <br />
                              <table style="font-size:15px;">
                                 <tr>
                                    <td style="width:20%">
                                       <asp:Label ID="Label18" runat="server"><b>Degree:</b></asp:Label>
                                    </td>
                                    <td style="width:20%">
                                       <asp:TextBox ID="degree" runat="server" style="margin-top:2px; margin-bottom:2px; width:100%" ></asp:TextBox>
                                    </td>
                                    <td style="width:10%">
                                       <asp:Label ID="Label19" runat="server"><b>Major:</b></asp:Label>
                                    </td>
                                    <td style="width:50%">
                                       <asp:TextBox ID="major" runat="server" style="margin-top:2px; margin-bottom:2px; width:100%" ></asp:TextBox>
                                    </td>
                                 </tr>
                                 <tr>
                                    <td>
                                       <asp:Label ID="Label20" runat="server"><b>Year of Graduation:</b></asp:Label>
                                    </td>
                                    <td>
                                       <asp:TextBox ID="gradYear" runat="server" style="margin-top:2px; margin-bottom:2px; width:100%" ></asp:TextBox>
                                    </td>
                                    <td>
                                       <asp:Label ID="Label21" runat="server"><b>University:</b></asp:Label>
                                    </td>
                                    <td>
                                       <asp:TextBox ID="university" runat="server" style="margin-top:2px; margin-bottom:2px; width:100%" ></asp:TextBox>
                                    </td>
                                 </tr>
                              </table>
                           </div>
                        </li>
                        <br />
                        <li>
                           &#9658;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                           <asp:HyperLink Width="90%" ID="languages" runat="server" title="Please Click here to enter Spoken Languages" NavigateUrl="javascript:ShowHideDivOnButtonClicktest15();">Spoken Languages</asp:HyperLink>
                           <div style="text-align:left;" id="spokenLanguages" hidden="hidden">
                              <br />
                              <asp:Label ID="Label22" runat="server"><b>Please enter the languages that you can speak</b></asp:Label>
                     
                              <asp:gridview ID="spokenLang"  DataKeyNames="ID" 
                                
                                  runat="server" ShowFooter="True" AutoGenerateColumns="False" GridLines="None" BorderStyle="None" OnRowDeleting="DeleteSpokenLang_Click" RowStyle-BackColor="#d7d5d5" EnableModelValidation="True">
                                 <Columns>
                                    <asp:TemplateField HeaderText="">
                                       <ItemTemplate>
                                          <asp:TextBox ID="spokenLang1" runat="server" placeholder="Language Spoken"  Text='<%#Eval("Language") %>'></asp:TextBox>
                                       </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:Label ID="spokenLang2" runat="server" width="40px" />
                                        </EditItemTemplate>
   
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="">
                                       <ItemTemplate>
                                          <asp:DropDownList id="fluency1" AutoPostBack="false" runat="server" style="margin-bottom:0px;" >
                                             <asp:ListItem Value="1"> 1 </asp:ListItem>
                                             <asp:ListItem Value="2"> 2 </asp:ListItem>
                                             <asp:ListItem Value="3"> 3 </asp:ListItem>
                                             <asp:ListItem Value="4"> 4 </asp:ListItem>
                                             <asp:ListItem Value="5"> 5 </asp:ListItem>
                                          </asp:DropDownList>
                                       </ItemTemplate>
                                       <FooterStyle HorizontalAlign="Right" />
                                       <FooterTemplate>
                                          <asp:Button ID="ButtonAddSpokenLang" runat="server" Text="Add" OnClick="ButtonAdd_Click" />
                                          <%--<asp:Button ID="ButtonDelete" runat="server" Text="Delete Row" OnClick="ButtonDelete_Click" />--%>
                                       </FooterTemplate>
                                    </asp:TemplateField>
                                    <asp:CommandField ShowDeleteButton="True" ButtonType="Button" />
                                 </Columns>
                              </asp:gridview>
                               
                              
                           </div>
                        </li>
                        <br />
                        <li>
                           &#9658;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                           <asp:Label ID="Label23" runat="server">Country / Regional Focus:</asp:Label>
                           &nbsp;&nbsp;&nbsp;
                           <asp:TextBox ID="TextBox1" runat="server" style="margin-top:2px; margin-bottom:2px; width:30%; display:inline;"  placeholder="Please enter the Country / Region of Focus"></asp:TextBox>
                        </li>
                        <br />
                        <li>
                           &#9658;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                           <asp:Label ID="Label24" runat="server">OII Faculty Member:</asp:Label>
                           &nbsp;&nbsp;&nbsp;
                           <asp:DropDownList id="DropDownList1" AutoPostBack="false" runat="server" style="margin-bottom:0px;">
                              <asp:ListItem Selected="True" disabled> Select an option </asp:ListItem>
                              <asp:ListItem Value="Yes"> Yes </asp:ListItem>
                              <asp:ListItem Value="No"> No </asp:ListItem>
                           </asp:DropDownList>
                        </li>
                        <br />
                        <li>
                           &#9658;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                           <asp:Label ID="Label25" runat="server">CV:</asp:Label>
                           &nbsp;&nbsp;&nbsp;
                           <asp:FileUpload ID="cvUpload" runat="server" />
                            
                           <asp:HyperLink ID="CV" runat="server" title="Please click here" ></asp:HyperLink>
                           <asp:Button runat="server" id="CVload" text="Upload" onclick="uploadCV" />
                                                <asp:Label ID="cvupload_status" runat="server" style="width:100%"></asp:Label>


                      
                        </li>
                     </ul>
                  </div>
                  <br />
                  <asp:HyperLink Width="100%" class="accordion" ID="biog" runat="server" title="Please Click here to enter Biography" NavigateUrl="javascript:ShowHideDivOnButtonClicktest5();">Biography</asp:HyperLink>
                  <div style="text-align:left;" id="biography" hidden="hidden">
                     <table style="font-size:18px;">
                        <tr>
                           <td>
                              <asp:TextBox id="TextArea1" TextMode="multiline" Rows="5" runat="server" style="width:100%" placeholder="Enter your profile summary"/>
                           </td>
                        </tr>
                     </table>
                  </div>
                  <br />
                  <asp:HyperLink Width="100%" class="accordion" ID="honors" runat="server" title="Click here to enter Honors and Awards" NavigateUrl="javascript:ShowHideDivOnButtonClicktest6();">Honors & Awards</asp:HyperLink>
                  <div style="text-align:left;" id="awards" hidden="hidden">
                     <asp:Label ID="Label8" runat="server"><b>Please enter your Honors and Awards</b></asp:Label>
                     <asp:gridview ID="awardsHonors" DataKeyNames="ID" runat="server" ShowFooter="true" AutoGenerateColumns="false" GridLines="None" BorderStyle="None" OnRowDeleting="DeleteAwardsHonors_Click" RowStyle-BackColor="#d7d5d5">
                        <Columns>
                           <asp:TemplateField HeaderText="">
                              <ItemTemplate>
                                 <asp:Label ID="awardshonors" runat="server">Award/Honor</asp:Label>
                              </ItemTemplate>
                           </asp:TemplateField>
                           <asp:TemplateField HeaderText="">
                              <ItemTemplate>
                                 <asp:TextBox ID="awardhonor" runat="server" placeholder="Please enter Award/Honor" Text='<%#Eval("Honor Award") %>'></asp:TextBox>
                              </ItemTemplate>
                              <FooterStyle HorizontalAlign="Right" />
                              <FooterTemplate>
                                 <asp:Button ID="ButtonAddAwardsHonors" runat="server" Text="Add" OnClick="ButtonAdd_Click" />
                                 <%--<asp:Button ID="ButtonDelete" runat="server" Text="Delete Row" OnClick="ButtonDelete_Click" />--%>
                              </FooterTemplate>
                           </asp:TemplateField>
                           <asp:CommandField ShowDeleteButton="True" ButtonType="Button" />
                        </Columns>
                     </asp:gridview>
                     <br />
                     <%--<asp:Button ID="addHonor" runat="server" Text="+" /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="deleteHonor" runat="server" Text="-" />  --%>                         
                  </div>
                  <br />
                  <asp:HyperLink Width="100%" class="accordion" ID="sponsoredProjects" runat="server" title="Click here to enter Major Sponsored Projects" NavigateUrl="javascript:ShowHideDivOnButtonClicktest7();">Major Sponsored Projects</asp:HyperLink>
                  <div style="text-align:left;" id="majorProjects" hidden="hidden">
                     <asp:Label ID="Label10" runat="server">Please enter your Major Sponsored Projects</asp:Label>
           
                     <asp:gridview ID="sponsoredProjectsGrid" DataKeyNames="ID" runat="server" ShowFooter="true" AutoGenerateColumns="false" GridLines="None" BorderStyle="None" OnRowDeleting="DeleteSponsoredProjects_Click" RowStyle-BackColor="#d7d5d5">
                        <Columns>
                           <asp:TemplateField HeaderText="">
                              <ItemTemplate>
                                 <asp:Label ID="projects" runat="server">Sponsored Project</asp:Label>
                              </ItemTemplate>
                           </asp:TemplateField>
                           <asp:TemplateField HeaderText="">
                              <ItemTemplate>
                                 <asp:TextBox ID="sponsoredProject" runat="server" placeholder="Please enter sponsored Project" Text='<%#Eval("Project") %>'></asp:TextBox>
                              </ItemTemplate>
                              <FooterStyle HorizontalAlign="Right" />
                              <FooterTemplate>
                                 <asp:Button ID="ButtonAddSponsoredProjects" runat="server" Text="Add" OnClick="ButtonAdd_Click" />
                                
                              </FooterTemplate>
                           </asp:TemplateField>
                           <asp:CommandField ShowDeleteButton="True" ButtonType="Button" />
                        </Columns>
                     </asp:gridview>
                     <br />
                                     
                  </div>
                  <br />
                   <asp:HyperLink Width="100%" class="accordion" ID="projects" runat="server" title="Click here to enter Research Projects" NavigateUrl="javascript:ShowHideDivOnButtonClicktest8();">Research Projects</asp:HyperLink>
                  <div style="text-align:left;" id="researchProjects" hidden="hidden">
                     <asp:Label ID="Label13" runat="server"><b>Please enter your Research</b></asp:Label>
                      <br />
                     <asp:gridview ID="researchProject"  runat="server" DataKeyNames="ID"  ShowFooter="true" AutoGenerateColumns="false" GridLines="None" BorderStyle="None" OnRowDeleting="DeleteResearchProjects_Click" RowStyle-BackColor="#d7d5d5">
                        <Columns>
                           <asp:TemplateField HeaderText="">
                              <ItemTemplate>
                                 <asp:Label ID="project" runat="server">Research Projects</asp:Label>
                              </ItemTemplate>
                           </asp:TemplateField>
                           <asp:TemplateField HeaderText="">
                              <ItemTemplate>
                                 <asp:TextBox ID="projectfield" runat="server" placeholder="Please enter Project" Text='<%#Eval("Research Project") %>'></asp:TextBox>
                              </ItemTemplate>
                              <FooterStyle HorizontalAlign="Right" />
                              <FooterTemplate>
                                 <asp:Button ID="ButtonAddProjects" runat="server" Text="Add" OnClick="ButtonAdd_Click" />
                                 <%--<asp:Button ID="ButtonDelete" runat="server" Text="Delete Row" OnClick="ButtonDelete_Click" />--%>
                              </FooterTemplate>
                           </asp:TemplateField>
                           <asp:CommandField ShowDeleteButton="True" ButtonType="Button" />
                            
                        </Columns>
                        
                     </asp:gridview>

                     <br />
                    
                  </div>
                  <asp:HyperLink Width="100%" class="accordion" ID="lectures" runat="server" title="Click here to enter your Recent Lectures" NavigateUrl="javascript:ShowHideDivOnButtonClicktest9();">Recent Lectures/Symposia</asp:HyperLink>
                  <div style="text-align:left;" id="recentLectures" hidden="hidden">
                     <asp:Label ID="Label14" runat="server">Please enter your Recent Lectures</asp:Label>
                    
                      <asp:gridview ID="lecture" DataKeyNames="ID"  runat="server" ShowFooter="true" AutoGenerateColumns="false" GridLines="None" BorderStyle="None" OnRowDeleting="DeleteLectureProjects_Click" RowStyle-BackColor="#d7d5d5">
                        <Columns>
                           
                          <asp:TemplateField HeaderText="">
                              <ItemTemplate>
                                 &#9658;&nbsp;&nbsp;&nbsp;
                              <asp:TextBox ID="country1" runat="server" style="margin-top:2px; margin-bottom:2px; display:inline; width:45%" placeholder="Country" Text='<%#Eval("Country") %>'></asp:TextBox>
                              </ItemTemplate>
                              </asp:TemplateField>
                            <asp:TemplateField HeaderText="">
                              <ItemTemplate>
                                 <asp:TextBox ID="lecture1" runat="server" style="margin-top:2px; margin-bottom:2px; width:55%" placeholder="Lectures" Text='<%#Eval("Lecture") %>'></asp:TextBox>
                              </ItemTemplate>

                              <FooterStyle HorizontalAlign="Right" />
                              <FooterTemplate>
                                 <asp:Button ID="lectureButton" runat="server" Text="Add" OnClick="ButtonAdd_Click" />
                                 <%--<asp:Button ID="ButtonDelete" runat="server" Text="Delete Row" OnClick="ButtonDelete_Click" />--%>
                             </FooterTemplate>
                           </asp:TemplateField>
                           <asp:CommandField ShowDeleteButton="True" ButtonType="Button" />
                            
                        </Columns>
                        
                     </asp:gridview>
                     <br />
                    
                  </div>
                  <br />
                  <asp:HyperLink Width="100%" class="accordion" ID="associations" runat="server" title="Click here to enter International Associations and Engagement" NavigateUrl="javascript:ShowHideDivOnButtonClicktest10();">Int'l Associations & Engagement</asp:HyperLink>
                  <div style="text-align:left;" id="internationalAssociations" hidden="hidden">
                     <asp:Label ID="Label15" runat="server">Please enter your International Associations and Engagement</asp:Label>
                      <br />
                     <asp:gridview ID="associationsGrid" DataKeyNames="ID"  runat="server" ShowFooter="true" AutoGenerateColumns="false" GridLines="None" BorderStyle="None" OnRowDeleting="DeleteAssociations_Click" RowStyle-BackColor="#d7d5d5">
                        <Columns>
                           <asp:TemplateField HeaderText="">
                              <ItemTemplate>
                                 <asp:TextBox ID="associationfield" runat="server" placeholder="Please enter Associations" Text='<%#Eval("Association") %>'></asp:TextBox>
                              </ItemTemplate>
                              <FooterStyle HorizontalAlign="Right" />
                              <FooterTemplate>
                                 <asp:Button ID="ButtonAddAssociations" runat="server" Text="Add" OnClick="ButtonAdd_Click" />
                                 <%--<asp:Button ID="ButtonDelete" runat="server" Text="Delete Row" OnClick="ButtonDelete_Click" />--%>
                              </FooterTemplate>
                           </asp:TemplateField>
                           <asp:CommandField ShowDeleteButton="True" ButtonType="Button" />
                            
                        </Columns>
                        
                     </asp:gridview>
                   
                     <br />
                     
                  </div>
                  <br />
                  <asp:HyperLink Width="100%" class="accordion" ID="agreements" runat="server" title="Click here to enter Current Agreements" NavigateUrl="javascript:ShowHideDivOnButtonClicktest12();">Current Agreements</asp:HyperLink>
                  <div style="text-align:left;" id="currentAgreements" hidden="hidden">
                     <asp:Label ID="Label16" runat="server">Please enter your Current Agreements</asp:Label>
                     <br />
                     <asp:gridview ID="agreementsGrid" DataKeyNames="ID"  runat="server" ShowFooter="true" AutoGenerateColumns="false" GridLines="None" BorderStyle="None" OnRowDeleting="DeleteAgreements_Click" RowStyle-BackColor="#d7d5d5">
                        <Columns>
                           <asp:TemplateField HeaderText="">
                              <ItemTemplate>
                                 <asp:TextBox ID="agreementsfield" runat="server" placeholder="Please enter Current Agreements" Text='<%#Eval("Agreement") %>'></asp:TextBox>
                              </ItemTemplate>
                              <FooterStyle HorizontalAlign="Right" />
                              <FooterTemplate>
                                 <asp:Button ID="ButtonAddAgreements" runat="server" Text="Add" OnClick="ButtonAdd_Click" />
                                 <%--<asp:Button ID="ButtonDelete" runat="server" Text="Delete Row" OnClick="ButtonDelete_Click" />--%>
                              </FooterTemplate>
                           </asp:TemplateField>
                           <asp:CommandField ShowDeleteButton="True" ButtonType="Button" />
                            
                        </Columns>
                        
                     </asp:gridview>
                     <br />
                  
                  </div>
                  <br />
                  <asp:HyperLink Width="100%" class="accordion" ID="keywords_HyperLink" runat="server" title="Click here to enter Keywords" NavigateUrl="javascript:ShowHideDivOnButtonClicktest13();">Keywords</asp:HyperLink>
                  <div style="text-align:left;" id="keywords" hidden="hidden">
                     <asp:Label ID="Label17" runat="server">Please enter your Keywords</asp:Label>
                     <br />
                     <asp:gridview ID="keywordsGrid" DataKeyNames="ID"  runat="server" ShowFooter="true" AutoGenerateColumns="false" GridLines="None" BorderStyle="None" OnRowDeleting="DeleteKeywords_Click" RowStyle-BackColor="#d7d5d5">
                        <Columns>
                           <asp:TemplateField HeaderText="">
                              <ItemTemplate>
                                 <asp:TextBox ID="keywordsfield" runat="server" placeholder="Please enter Keywords" Text='<%#Eval("Keyword")%>'></asp:TextBox>
                              </ItemTemplate>
                              <FooterStyle HorizontalAlign="Right" />
                              <FooterTemplate>
                                 <asp:Button ID="ButtonAddKeywords" runat="server" Text="Add" OnClick="ButtonAdd_Click" />
                                 <%--<asp:Button ID="ButtonDelete" runat="server" Text="Delete Row" OnClick="ButtonDelete_Click" />--%>
                              </FooterTemplate>
                           </asp:TemplateField>
                           <asp:CommandField ShowDeleteButton="True" ButtonType="Button" />
                            
                        </Columns>
                        
                     </asp:gridview>
                     <br />
                     
                  </div>
               </div>
               <br />
               <div class="column right" style="border-right:3px solid #780101;">
                  <div style="background-color:#F7F6F4;">
                     <br />
                     <p style="text-align:center; font-size:25px; font-family:'Times New Roman'; color:#780101;"><b>CAREER STATS</b></p>
                     <p style="text-align:center; font-size:18px; ">By the <u>NUMBERS</u></p>
                     <table>
                        <tr style="background-color:#e4e4e4;">
                           <td>
                              <asp:Label ID="Label26" runat="server">FUNDS RECIEVED</asp:Label>
                           </td>
                           <td>
                              <asp:TextBox ID="funds" runat="server" style="margin-top:2px; margin-bottom:2px;"></asp:TextBox>
                           </td>
                           <td>
                           </td>
                           <td>
                           </td>
                        </tr>
                        <tr style="background-color:#F7F6F4;">
                           <td>
                              <asp:Label ID="Label32" runat="server">Number of Presentations</asp:Label>
                           </td>
                           <td>
                              <asp:TextBox ID="presentations" runat="server" style="margin-top:2px; margin-bottom:2px;"></asp:TextBox>
                           </td>
                        </tr>
                        <tr style="background-color:#e4e4e4;">
                           <td>
                              <asp:Label ID="Label29" runat="server">Number of Sponsored Projects</asp:Label>
                           </td>
                           <td>
                              <asp:TextBox ID="numberOfProjects" runat="server" style="margin-top:2px; margin-bottom:2px;"></asp:TextBox>
                           </td>
                        </tr>
                        <tr style="background-color:#F7F6F4;">
                           <td>
                              <asp:Label ID="Label31" runat="server">Number of Publications</asp:Label>
                           </td>
                           <td>
                              <asp:TextBox ID="publications" runat="server" style="margin-top:2px; margin-bottom:2px;"></asp:TextBox>
                           </td>
                        </tr>
                        <tr>
                           <td>
                              <asp:Button ID="submitBtn" runat="server"  Text="Submit" OnClick="submitBtn_Click" />
                           </td>
                        </tr>
                     </table>
                  </div>
               </div>
               <div class="column left" style="background-color:#F7F6F4; max-height:240px;padding-left:0px">
                  <p style="text-align:center; font-size:30px; color: #780101;"><b><u>Int'l </u>Travel</b></p>
                  <br />
                  <asp:gridview ID="IntlTravel" DataKeyNames="ID"  runat="server" ShowFooter="true" AutoGenerateColumns="false" GridLines="None" BorderStyle="None" OnRowDeleting="DeleteIntlTravel_Click" RowStyle-BackColor="#d7d5d5">
                     <Columns>
                        <asp:TemplateField HeaderText="">
                           <ItemTemplate>
                              <asp:TextBox ID="travelinfo" runat="server" placeholder="International Travel" Text='<%#Eval("International Travel") %>'></asp:TextBox>
                           </ItemTemplate>
                           <FooterStyle HorizontalAlign="Right" />
                           <FooterTemplate>
                              <asp:Button ID="intlTravelButton" runat="server" Text="Add" OnClick="ButtonAdd_Click" />
                           </FooterTemplate>
                        </asp:TemplateField>
                        <asp:CommandField ShowDeleteButton="True" ButtonType="Button" />
                     </Columns>
                  </asp:gridview>



               </div>
                <div class="modal-parent">
                <!-- Modal content -->
                <div class="modal-content" id="myModal" class="modal">
                    <div class="modal-header">
                        <span class="close">&times;</span>
                        <i class='far fa-clock' style="margin-right: 10px;"></i>
                        Timeout Warning
                    </div>
                    <div class="modal-body">
                        Your Session is about to expire, do you want to continue your session?<br />
                        <span id="seconds"></span>&nbsp;left.<br />
                    </div>
                    <div class="modal-footer">
                        <asp:LinkButton runat="server" Font-Underline="false"  ID="resume" Text="<i class='fa fa-refresh'></i> Resume Session"
                            CssClass="resume" OnClientClick="ResumeSession()" />
                        <asp:LinkButton runat="server" Font-Underline="false"  ID="cancel" Text="Logout"
                            CssClass="cancel" OnClick="logout" />

                    </div>
                </div>
            </div>
                <script type="text/javascript">

                    function SessionExpireAlert(timeout) {
                        // Get the modal
                        var modal = document.getElementById("myModal");
                        var modalParent = document.getElementsByClassName("modal-parent")[0];

                        // Get the <span> element that closes the modal
                        var span = document.getElementsByClassName("close")[0];

                        console.log(timeout);
                        var seconds = timeout / 1000;
                        console.log(seconds);
                        document.getElementsByName("seconds").innerHTML = parseInt(seconds / 60) + " m " + (parseInt(seconds) - parseInt(seconds / 60) * 60) + " s";

                        setInterval(function () {
                            seconds--;
                            document.getElementById("seconds").innerHTML = parseInt(seconds / 60) + " m " + (parseInt(seconds) - parseInt(seconds / 60) * 60) + " s";
                        }, 1000);
                        setTimeout(function () {
                            modalParent.style.display = "block";

                        }, timeout - 20 * 1000);
                        setTimeout(function () {
                            window.location = 'http://ipaweb.gsu.edu/search/FacultyProfile/Website/OnlineFacultyForm/OnlineFacultyForm/FacultyLogin.aspx';
                        }, timeout);

                    };
                    function ResumeSession() {
                        window.location.reload();
                    }

                </script>
            </form>
         </div>
      </div>
      <br /><br />
   </body>
</html>