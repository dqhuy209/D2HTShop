using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace D2HTShop
{
    public partial class cart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            float totalprice = 0;
            List<Product> arr = (List<Product>)Application["cart"];
            foreach (Product pr in arr){
                totalprice += float.Parse(pr.price);
            }
            cartList.DataSource = arr;
            cartList.DataBind();
            TotalProduct.Text = arr.Count.ToString();
            TotalPriceProduct.Text = totalprice.ToString();

        }

        protected void btnRemove_Click(object sender, EventArgs e)
        {
            string id = ((Button)sender).CommandArgument.ToString();
            List<Product> arr = (List<Product>)Application["cart"];
            foreach(Product pr in arr)
            {
                if (pr.id == id)
                {
                    arr.Remove(pr);
                    break;
                }
            }

            Application["cart"] = arr;
            cartList.DataSource = arr;
            cartList.DataBind();
            TotalProduct.Text = arr.Count.ToString();
            Page.Response.Redirect(Page.Request.Url.ToString(), true);
        }
    }
}