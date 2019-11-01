using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Week8_CodeJam
{
    public partial class MerchandiseSite : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack)
            {
                Page.Validate();

                if (Page.IsValid)
                {
                    //string Tshirt_Size = Tshirt_size.Text.ToString();
                    //string Tshirt_Style = Tshirt_style.Text.ToString();
                    string Customer_Name = customer_name.Text.ToString();
                    string Customer_Address = customer_address.InnerText.ToString();
                    //string Delivery_Type = delivery_type.Text.ToString();

                    merchandise_summary.InnerHtml = "";
                    merchandise_summary.InnerHtml += "Hello " + Customer_Name + ", here is summary of your order:" + "<br>";
                    merchandise_summary.InnerHtml += "You have ordered a " + Tshirt_size.SelectedValue + " " + Tshirt_style.SelectedValue + " Tshirt." + "<br>";
                    merchandise_summary.InnerHtml += "You want the " + delivery_type.SelectedValue + " delivery method to the following address: " + Customer_Address;
                }

            }
        }
    }
}