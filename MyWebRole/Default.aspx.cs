using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebRole
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                string filename = txtFilename.Text;

                string userData = txtInput.Text;
                string destFolder = Request.PhysicalApplicationPath;
                string destFile = Path.Combine(destFolder, filename);

                File.WriteAllText(destFile, userData);
                lblStatus.Text = String.Format("Successfully written {0} bytes to {1}", userData.Length, destFile);
            }
            catch (Exception ex)
            {
                lblStatus.Text = "Error occured:" + ex.Message;
            }
        }
    }
}