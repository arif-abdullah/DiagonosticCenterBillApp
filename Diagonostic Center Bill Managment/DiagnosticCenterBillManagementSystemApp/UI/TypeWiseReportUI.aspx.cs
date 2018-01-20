using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiagnosticCenterBillManagementSystemApp.BLL;
using DiagnosticCenterBillManagementSystemApp.DAL.Model;
using iTextSharp.text;
using iTextSharp.text.pdf;

namespace DiagnosticCenterBillManagementSystemApp.UI
{
    public partial class TypeWiseReportUI : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        private TypeWiseReportManager typeWiseReportManager=new TypeWiseReportManager();
        protected void showButton_Click(object sender, EventArgs e)
        {  notificationLabel.Text = "";
            try
            {

                DateTime fromDate = Convert.ToDateTime(fromDateTextBox.Text);
                DateTime toDate = Convert.ToDateTime(toDateTextBox.Text);
            }
            catch (Exception exception)
            {
                notificationLabel.Text = "invalid Date Formate";
                typeReportGridView.DataSource = null;
                typeReportGridView.DataBind();
                return;

            }


            if (Convert.ToDateTime(fromDateTextBox.Text) > Convert.ToDateTime(toDateTextBox.Text))
            {
                notificationLabel.Text = "From Date Must Be Smaller Than To Date";
                typeReportGridView.DataSource = null;
                typeReportGridView.DataBind();

            }

            else
            {
                if (fromDateTextBox.Text.Equals("") || toDateTextBox.Text.Equals(""))
                {
                    notificationLabel.Text = "Please Insert Dates";
                    return;
                }
                DateTime fromDate = Convert.ToDateTime(fromDateTextBox.Text);
                DateTime toDate = Convert.ToDateTime(toDateTextBox.Text);

                List<TypeWiseReportView> typeWiseReport =
                    typeWiseReportManager.GetTypeInfoByDate(fromDate.ToString("yyyy/MM/dd"),
                        toDate.ToString("yyyy/MM/dd"));
                typeReportGridView.DataSource = typeWiseReport;
                typeReportGridView.DataBind();

                double sum = 0;
                if (typeWiseReport != null)
                {
                    foreach (TypeWiseReportView type in typeWiseReport)
                    {
                        sum += type.TotalAmount;


                    }

                    totalAmountTextBox.Text = sum.ToString();
                }
            }
        }

        protected void pdfButton_Click(object sender, EventArgs e)
        {
            if (typeReportGridView.Rows.Count == 0)
            {
                notificationLabel.Text = "No data found";
                return;
            }
            PdfPTable pdfPTable = new PdfPTable(typeReportGridView.HeaderRow.Cells.Count);

            foreach (TableCell headercell in typeReportGridView.HeaderRow.Cells)
            {
                PdfPCell pdfCell = new PdfPCell(new Phrase(headercell.Text));
                pdfPTable.AddCell(pdfCell);
            }

            for (int z = 0; z < typeReportGridView.Rows.Count; z++)
            {

                string id = ((Label)typeReportGridView.Rows[z].Cells[0].FindControl("id")).Text;

                string testName = ((Label)typeReportGridView.Rows[z].Cells[1].FindControl("testTypeName")).Text;
                string totalTest = ((Label)typeReportGridView.Rows[z].Cells[2].FindControl("totalNoOfTest")).Text;
                string totalAmount = ((Label)typeReportGridView.Rows[z].Cells[3].FindControl("totalAmount")).Text;


                pdfPTable.AddCell(id);
                pdfPTable.AddCell(testName);
                pdfPTable.AddCell(totalTest);
                pdfPTable.AddCell(totalAmount);


            }



            Document pdfDocument = new Document(PageSize.A4, 50, 50, 20, 50);

            PdfWriter.GetInstance(pdfDocument, Response.OutputStream);
            pdfDocument.Open();

            pdfDocument.Add(new Paragraph("#---------Type Wise Report-----------#"));
            pdfDocument.Add(new Phrase("\n"));


            pdfDocument.Add(new Paragraph("From  = " + fromDateTextBox.Text));

            pdfDocument.Add(new Phrase("\n"));
            pdfDocument.Add(new Paragraph("To  = " + toDateTextBox.Text));
            pdfDocument.Add(new Phrase("\n"));
            pdfDocument.Add(pdfPTable);

            pdfDocument.Add(new Paragraph("Total Amount = " + totalAmountTextBox.Text));
            pdfDocument.Close();

            Response.ContentType = "application/pdf";
            Response.AppendHeader("content-disposition", "attachment;filename=TypeWiseReport.pdf");
            Response.Write(pdfDocument);
            Response.Flush();
            Response.End();
        }
    }
}