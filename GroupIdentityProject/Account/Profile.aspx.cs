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
            DataView dataViewUserName = (DataView)ProfileDataSource.Select(DataSourceSelectArguments.Empty);
            foreach (DataRowView dataRowView in dataViewUserName)
            {
                UserNameLabel.Text = dataRowView["UserName"].ToString();


            }

            DataView dataViewConfirm = (DataView)ProfileDataSource.Select(DataSourceSelectArguments.Empty);
            foreach (DataRowView dataRowView in dataViewConfirm)
            {

                pwConfirmLabel.Text = dataRowView["EmailConfirmed"].ToString();

            }
            DataView dataViewPhonenumbe = (DataView)ProfileDataSource.Select(DataSourceSelectArguments.Empty);
            foreach (DataRowView dataRowView in dataViewConfirm)
            {

                PhoneNumberLabel.Text = dataRowView["PhoneNumber"].ToString();
                if (PhoneNumberLabel.Text == null)
                    PhoneNumberLabel.Text = "Phone number not set";


            }

            // UserNameLable.Text = System.Web.HttpContext.Current.User.Identity.Name;
        }

        protected void ProfileDataSource_Init(object sender, EventArgs e)
        {
            this.ProfileDataSource.SelectParameters["Id"].DefaultValue = System.Web.HttpContext.Current.User.Identity.Name;
        }
    }
}