using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using DiagnosticCenterBillManagementSystemApp.DAL.Gateway;
using DiagnosticCenterBillManagementSystemApp.DAL.Model;

namespace DiagnosticCenterBillManagementSystemApp.BLL
{
    public class UnpaidBillReportManager
    {
        private UnpaidBillReportGateway unpaidBillReportGateway=new UnpaidBillReportGateway();
        public List<UnpaidBillReportView> GetUnpaidInfoByDate(string fromDate, string toDate)
        {
            return unpaidBillReportGateway.GetUnpaidInfoByDate(fromDate, toDate);
        }
    }
}