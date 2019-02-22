using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class home : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {

        HttpCookie userInfo = new HttpCookie("userLoggedIn");


        if (userInfo.Value != null)
        {
            //Response.Cookies("").Value = nameTextBox.Text
            
        }
        else
        {

            cookieLoggedIn.Text = "Log in"; //<<<On header last hyper link will display this
        }
    }
}