﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EMpt
{
    public partial class createAccount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
              
        }

        protected void btnCreateAccount_Click(object sender, EventArgs e)
        {
            
            try
            {
                Response.Redirect("~/messageSplash.html");
            }
            catch (Exception ex)
            {
                errorLbl.Text = ex.Message.ToString();
            }
            
        }
    }
}