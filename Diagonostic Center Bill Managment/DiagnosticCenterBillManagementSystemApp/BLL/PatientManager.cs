using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using DiagnosticCenterBillManagementSystemApp.DAL.Gateway;
using DiagnosticCenterBillManagementSystemApp.DAL.Model;

namespace DiagnosticCenterBillManagementSystemApp.BLL
{
    public class PatientManager
    {
        PatientGateWay patientGateWay = new PatientGateWay();
        public string Save(Patient patient)
        {


            if (patientGateWay.PatientIsExist(patient.Patient_Contact))
            {
                return "Patient Already Exists";
            }

            if (String.IsNullOrEmpty(patient.Patient_Name))
            {
                return "Please Insert All Information";
            }


            int rawAffected = patientGateWay.Save(patient);
            if (rawAffected > 0)
            {
                return "Patient Add Successfull";
            }
            return "Falied ";
        }

        public List<Patient> GetAlPatients()
        {
            return patientGateWay.GetAllPatients();
        }

        public Patient GetAPatients(string patientName)
        {
            return patientGateWay.GetAPatients(patientName);
        }
    }
}