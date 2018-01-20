using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiagnosticCenterBillManagementSystemApp.BLL;
using DiagnosticCenterBillManagementSystemApp.DAL.Model;

namespace DiagnosticCenterBillManagementSystemApp.UI
{
    public partial class TypeSetupUI : System.Web.UI.Page
    {
        private TypeSetup type=new TypeSetup();
        private TypeSetupManager typeSetupManager=new TypeSetupManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                List<TypeSetup> listTypeSetups = typeSetupManager.GetTypeSetups();

                typeGridView.DataSource = listTypeSetups;
                typeGridView.DataBind();
            }
        }

        protected void saveButton_Click(object sender, EventArgs e)
        {
            type.TypeName = typeNameTextBox.Text;
            notificationLabel.Text = typeSetupManager.Save(type);
            if (notificationLabel.Text.Equals("Test Type Add Successfull"))
            {
                notificationLabel.ForeColor = Color.White;
                notificationLabel.BackColor = System.Drawing.Color.LimeGreen;
                List<TypeSetup> listTypeSetups = typeSetupManager.GetTypeSetups();

                typeGridView.DataSource = listTypeSetups;
                typeGridView.DataBind();
            }
            else if (notificationLabel.Text.Equals("Type Name Already Exist"))
            {
                notificationLabel.ForeColor = Color.White;
                notificationLabel.BackColor = System.Drawing.Color.Red;
                
            }
            else
            {
                notificationLabel.ForeColor = Color.White;
                notificationLabel.BackColor = System.Drawing.Color.Red;
            }
        }
    }
}