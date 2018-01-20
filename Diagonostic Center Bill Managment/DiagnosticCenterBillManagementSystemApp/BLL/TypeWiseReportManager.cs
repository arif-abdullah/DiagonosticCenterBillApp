using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using DiagnosticCenterBillManagementSystemApp.DAL.Gateway;
using DiagnosticCenterBillManagementSystemApp.DAL.Model;

namespace DiagnosticCenterBillManagementSystemApp.BLL
{
    public class TypeWiseReportManager
    {
        private TypeWiseReportGateway typeWiseReport=new TypeWiseReportGateway();
        public List<TypeWiseReportView> GetTypeInfoByDate(string fromDate, string toDate)
        {
            return typeWiseReport.GetTypeInfoByDate(fromDate, toDate);
        }
    }
}