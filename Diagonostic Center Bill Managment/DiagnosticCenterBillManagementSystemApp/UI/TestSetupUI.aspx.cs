using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiagnosticCenterBillManagementSystemApp.BLL;
using DiagnosticCenterBillManagementSystemApp.DAL.Model;

namespace DiagnosticCenterBillManagementSystemApp.UI
{
    public partial class TestSetupUI : System.Web.UI.Page
    {
        private TypeSetupManager typeSetupManager=new TypeSetupManager();
        private TestSetup test=new TestSetup();
        private TestSetupManager testSetupManager=new TestSetupManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                List<TypeSetup> types = typeSetupManager.GetTypeSetups();

                testTypeDropDownList.DataTextField = "TypeName";
                testTypeDropDownList.DataValueField = "Id";

                testTypeDropDownList.DataSource = types;
                testTypeDropDownList.DataBind();

                List<TestWithType> listTestWithTypes = testSetupManager.GeTestWithTypes();
                testSetupGridView.DataSource = listTestWithTypes;
                testSetupGridView.DataBind();
               
            }

            //else if (IsPostBack)
            //{
            //    List<TestWithType> listTestWithTypes = testSetupManager.GeTestWithTypes();
            //    testSetupGridView.DataSource = listTestWithTypes;
            //    testSetupGridView.DataBind();
            //    return;
            //}
         
        }

        protected void saveButton_Click(object sender, EventArgs e)
        {

            if (feeTextBox.Text.Equals("") || testNameTextBox.Text.Equals(""))
            {
                notificationLabel.Text = "Please Insert All Informationn";
            }
            else if (Convert.ToDouble(feeTextBox.Text) <0)
            {
                notificationLabel.Text = "Incorrect Fee";
            }
            else if (Convert.ToInt32(testTypeDropDownList.SelectedValue) == 0)
            {
                notificationLabel.Text = "Please Insert Type First";
            }
            else
            {
                test.TestName = testNameTextBox.Text;

                test.Fee = Convert.ToDouble(feeTextBox.Text);

                test.TypeId = Convert.ToInt32(testTypeDropDownList.SelectedValue);

                notificationLabel.Text = testSetupManager.Save(test);
            }



            if (notificationLabel.Text.Equals("Test Add Successfull"))
            {
                List<TestWithType> listTestWithTypes = testSetupManager.GeTestWithTypes();
                testSetupGridView.DataSource = listTestWithTypes;
                testSetupGridView.DataBind();
            }
        }
    }
}