using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiagnosticCenterBillManagementSystemApp.BLL;
using DiagnosticCenterBillManagementSystemApp.DAL.Model;
using Org.BouncyCastle.Bcpg;

namespace DiagnosticCenterBillManagementSystemApp.UI
{
    public partial class PaymentUI : System.Web.UI.Page
    {
        BillManager billManager = new BillManager();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void searchButton_Click(object sender, EventArgs e)
        {
            if (billTextBox.Text == "")
            {
                notificationLabel.Text = "Please Insert A Bill Number";
            }
            else
            {
                refreshAll();
            }
        }

        public void refreshAll()
        {
            string param;
            param = billTextBox.Text;

            GenarateGrid(param);

            GenarateField(param);
            if (feeTextBox.Text.Equals("") || paidTextBox.Text.Equals(""))
            {
                return;
            }

            dueTextBox.Text = (Convert.ToDouble(feeTextBox.Text) - Convert.ToDouble(paidTextBox.Text)).ToString();

        }
        protected void GenarateField(string param)
        {
            BillInfo billInfo = billManager.GetBillInfo(param);
            if (billInfo==null)
            {
                notificationLabel.Text = "Bill has no Record ";
            }
            else
            {
                dateTextBox.Text = billInfo.Bill_Voucher_date.ToString("yyyy/MM/dd");
                paidTextBox.Text = billInfo.Paid_amount.ToString();
                feeTextBox.Text = billInfo.Bill_total.ToString();
            }
           

        }
        protected void GenarateGrid(string param)
        {
            
            List<ViewTestList> tests = billManager.GetTestsInformation(param);
            testsGridView.DataSource = tests;
            testsGridView.DataBind();
            
        }
        protected void payButton_Click(object sender, EventArgs e)
        {
            Bill bill =new Bill();
            
            
                bill.Bill_Voucher = billTextBox.Text;
                bill.Bill_Voucher_date = DateTime.Today;


                if (amountTextBox.Text == "" || Convert.ToDouble(amountTextBox.Text) <= 0)
                {
                    notificationLabel.Text = "Please insert Correct Paying Amount";
                }
                else
                {
                    bill.Bill_amount = Convert.ToDouble(amountTextBox.Text);
                    if (bill.Bill_amount<0)
                    {
                        notificationLabel.Text = "Enter Valid Amount";
                    }

                    
                    else if (Convert.ToDouble(feeTextBox.Text) - Convert.ToDouble(paidTextBox.Text) - Convert.ToDouble(amountTextBox.Text) >= 0)
                    {
                        notificationLabel.Text = billManager.Save(bill);
                    }
                    else
                    {
                        notificationLabel.Text = "Payment Can not be Greater than Billed Amount";
                    }
                }
            
             refreshAll();
            amountTextBox.Text = "";
        }

    
    }
}