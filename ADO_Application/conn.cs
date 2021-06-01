using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;

namespace ADO_Application
{
    public class conn
    {
        static public String ConnectionString {
            get {
                return WebConfigurationManager.ConnectionStrings["conn"].ConnectionString;
            }
        }
    }
}