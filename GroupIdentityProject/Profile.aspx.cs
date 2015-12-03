using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace GroupIdentityProject
{
    public partial class Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataView dataView = (DataView)ProfileDataSource.Select(DataSourceSelectArguments.Empty);
            foreach (DataRowView dataRowView in dataView)
            {
                UserNameLable.Text = dataRowView["UserName"].ToString();
            }

            // UserNameLable.Text = System.Web.HttpContext.Current.User.Identity.Name;
        }

        protected void ProfileDataSource_Init(object sender, EventArgs e)
        {
            this.ProfileDataSource.SelectParameters["Id"].DefaultValue = System.Web.HttpContext.Current.User.Identity.Name;
        }
    }
}