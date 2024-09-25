using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SkillSage
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void SubmitQuery(object sender, EventArgs e)
        {
            // Retrieve form data
            string userName = txtName.Text.Trim(); // No need to declare txtName again
            string userEmail = txtEmail.Text.Trim();
            string subject = txtSubject.Text.Trim();
            string message = txtMessage.Text.Trim();

            if (!string.IsNullOrEmpty(userName) && !string.IsNullOrEmpty(userEmail) && !string.IsNullOrEmpty(subject) && !string.IsNullOrEmpty(message))
            {
                try
                {
                    // Prepare email
                    MailMessage mail = new MailMessage();
                    mail.From = new MailAddress(userEmail);
                    mail.To.Add("support@skillsage.com"); // Organization's email address
                    mail.Subject = subject;
                    mail.Body = $"Name: {userName}\nEmail: {userEmail}\n\nMessage:\n{message}";

                    // Send email using SMTP
                    SmtpClient smtp = new SmtpClient("smtp.yourserver.com", 587); // Use your SMTP server details
                    smtp.Credentials = new NetworkCredential("your-email@domain.com", "your-email-password"); // Your credentials
                    smtp.EnableSsl = true;

                    smtp.Send(mail);

                    // Display success message
                    lblMessage.Text = "Thank you for contacting us! We will get back to you shortly.";
                    lblMessage.ForeColor = System.Drawing.Color.Green;

                    // Clear form fields
                    txtName.Text = "";
                    txtEmail.Text = "";
                    txtSubject.Text = "";
                    txtMessage.Text = "";
                }
                catch (Exception ex)
                {
                    // Display error message
                    lblMessage.Text = $"There was an error submitting your query. Please try again later. Error: {ex.Message}";
                    lblMessage.ForeColor = System.Drawing.Color.Red;
                }
            }
            else
            {
                // Display validation error
                lblMessage.Text = "Please fill in all fields.";
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}