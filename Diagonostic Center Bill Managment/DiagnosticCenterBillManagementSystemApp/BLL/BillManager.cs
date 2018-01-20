using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using DiagnosticCenterBillManagementSystemApp.DAL.Gateway;
using DiagnosticCenterBillManagementSystemApp.DAL.Model;

namespace DiagnosticCenterBillManagementSystemApp.BLL
{
    public class BillManager
    {
        BillGateWay billGateWay = new BillGateWay();


        public BillInfo GetBillInfo(string param)

        {
            return billGateWay.GetBillInfo(param);
        }
        
        public List<ViewTestList> GetTestsInformation(string param)
        {
            return billGateWay.GetTestsInformation(param);
        }

        public string Save(Bill abill)
        {
            int rawAffected= billGateWay.Save(abill);
            if (rawAffected>0)
            {
                return "Bill Update Succesfull";

            }
            return "Failed to Update";
        }
    }
}