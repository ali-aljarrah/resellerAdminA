using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace resellerAdminA
{
    public partial class general_settings : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void editBusinissSubmitBtn_Click(object sender, EventArgs e)
        {
            string script;
            var reg = new Regex(@"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$");

            if (businessName.Value.Trim() == "")
            {
                script = "toastr.error(\"Please enter your business name\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            if (supportEmail.Value.Trim() == "")
            {
                script = "toastr.error(\"Please enter your support email\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            if (!reg.IsMatch(supportEmail.Value))
            {
                script = "toastr.error(\"Please Enter a Valid Email Address in support email input\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            if (defaultSenderID.Value.Trim() == "")
            {
                script = "toastr.error(\"Please enter your default sender ID\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            if (businessAddress.Value.Trim() == "")
            {
                script = "toastr.error(\"Please enter your business address\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            if (businessWebsite.Value.Trim() == "")
            {
                script = "toastr.error(\"Please enter your business website\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            if (resellerDomain.Value.Trim() == "")
            {
                script = "toastr.error(\"Please enter your reseller domain\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            script = "toastr.success(\"Business details has been updated Successfully!\");";
            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
            return;
        }

        protected void otherSettingsSubmitBtn_Click(object sender, EventArgs e)
        {
            string script;

            if (billingModel.Value.Trim() == "")
            {
                script = "toastr.error(\"Please enter your billing mode\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            if (hideRegistrationForm.Value.Trim() == "")
            {
                script = "toastr.error(\"Please enter registarion form option\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            if (enableEmailVerification.Value.Trim() == "")
            {
                script = "toastr.error(\"Please enter enable email verification option\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            if (enablePhoneVerification.Value.Trim() == "")
            {
                script = "toastr.error(\"Please enter enable phone verification option\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            if (disableFundingByCreditPurchases.Value.Trim() == "")
            {
                script = "toastr.error(\"Please enter disable funding by credit purchases option\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            if (sendCustomersToWebsiteAfterLogout.Value.Trim() == "")
            {
                script = "toastr.error(\"Please enter send customer to website after logout option\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            if (invoiceTax.Value.Trim() == "")
            {
                script = "toastr.error(\"Please enter invoice tax\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            if (invoiceVat.Value.Trim() == "")
            {
                script = "toastr.error(\"Please enter invoice vat\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            script = "toastr.success(\"Other settings has been updated Successfully!\");";
            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
            return;
        }
    }
}