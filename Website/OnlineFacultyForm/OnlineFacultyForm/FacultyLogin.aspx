<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FacultyLogin.aspx.cs" Inherits="FacultyLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <title>Georgia State - Office of International Initiatives</title>

        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

        <style>
            .styled {
                border: 0;
                line-height: 2.5;
                padding: 0 20px;
                font-size: 1.2rem;
                text-align: center;
                color: #fff;
                text-shadow: 1px 1px 1px #000;
                border-radius: 10px;
                background-color: rgba(220, 0, 0, 1);
                background-image: linear-gradient(to top left, rgba(0, 0, 0, .2), rgba(0, 0, 0, .2) 30%, rgba(0, 0, 0, 0));
                box-shadow: inset 2px 2px 3px rgba(255, 255, 255, .6), inset -2px -2px 3px rgba(0, 0, 0, .6);
            }

            .styled:hover {
                    background-color: rgba(255, 0, 0, 1);
            }

            .styled:active {
                    box-shadow: inset -2px -2px 3px rgba(255, 255, 255, .6), inset 2px 2px 3px rgba(0, 0, 0, .6);
            }

            .class1{
                text-align:center;
                border:2px solid #696969;
                padding:15px 0px; 
                border-radius: 25px;
            }

            div{
                border-radius: 35px;
                font-size:23px;
            }

        </style>

        <script type="text/javascript">
                    function myFunction() {
                        var e = document.getElementById("userType");
                        var link = e.options[e.selectedIndex].value;

                        window.location.href = link;
                    }
        </script>
</head>
<body>
    <form id="form1" runat="server">
    
             
                <br />
                <div id="loginButton" style="text-align:center;display:flex;flex-direction:column;justify-content:center;align-items:center;height:100vh;">
                    <div style="border:5px solid black;padding:15px;">
                    <h2 style="padding:10px 0;">Please click on login to continue</h2>
                    <asp:Button CssClass="favorite styled" id="Button_FIPE" Text="Login" OnClick="quickLinksBtn_Click" runat="server" />
                        </div>
                </div>              
     
                           
      
    </form>
</body>
</html>
