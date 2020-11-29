using System;
using System.Data;
using System.Data.OleDb;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Text;

using System.IO;




namespace OnlineFacultyForm
{
    public partial class FacultyForm : System.Web.UI.Page
    {
        int research = 4;
        string url = "";
        string client_secret = "idmappclient";

        string client_id = "@!270D.2F71.07C0.8008!0001!376D.E063!0008!C5C0.CEC4";
        string oidserver = "idp.gsu.edu";

        string strip = " ";
        string user_email = "";
        string redirect_url = "";
        int id = -1;
        string language = "";
        string fluency = "";
        string filename1 = "";
        string filename2 = "";
        string cvUrl = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                Page.MaintainScrollPositionOnPostBack = true;

                System.Int64 timeout = System.Web.HttpContext.Current.Session.Timeout;
                ClientScript.RegisterStartupScript(this.GetType(), "SessionAlert", "SessionExpireAlert(" + (int)timeout * 6 * 1000 + ");", true);
                ClientScript.RegisterStartupScript(GetType(), "Javascript", "javascript:p(); ", true);
                if (!Page.IsPostBack)

                {
                    SetInitialRow();

                    if (Session["aid"] != null)
                    {


                        OleDbConnection con = new OleDbConnection("Provider = Microsoft.ACE.OLEDB.12.0; Data Source = C:/Inetpub/oia_data_vd/FacultyProfile/Database/FacultyProfile.accdb");
                        con.Open();
                        email.Text = Session["aid"].ToString();



                        String qry = "select * from FacultyDetails where Email='" + Session["aid"] + "'";
                        OleDbCommand com = new OleDbCommand(qry, con);
                        OleDbDataReader dr = com.ExecuteReader();
                        if (dr.Read())
                        {
                            id = Int32.Parse(dr["ID"].ToString());

                            Session["id"] = id;
                            if (id != -1)
                            {
                                firstName.Text = dr["First Name"].ToString();
                                lastName.Text = dr["Last Name"].ToString();
                                designation.Text = dr["Designation"].ToString();
                                college.Text = dr["College"].ToString();
                                department.Text = dr["Department"].ToString();
                                TextArea1.Text = dr["Biography"].ToString();
                                phone.Text = dr["Phone Number"].ToString();

                                email.Text = dr["Email"].ToString();
                                if (dr["Profilepic Location"].ToString() != null || dr["Profilepic Location"].ToString().Length != 0)
                                {

                                    Profilepi.Text = dr["FileName"].ToString();
                                    Profilepi.NavigateUrl = dr["Profilepic Location"].ToString();
                                    System.Web.UI.WebControls.Image imageButton = new System.Web.UI.WebControls.Image();
                                    imageButton.ImageUrl = dr["Profilepic Location"].ToString();
                                    imageButton.Height = Unit.Pixel(150);
                                    imageButton.Width = Unit.Pixel(150);
                                    Panel1.Controls.Add(imageButton);


                                }

                                dr.Close();
                                String qry1 = "select * from FacultySnapshots where Faculty_ID='" + Session["id"] + "'";
                                OleDbCommand com1 = new OleDbCommand(qry1, con);
                                OleDbDataReader dr1 = com1.ExecuteReader();

                                if (dr1.Read())
                                {
                                    degree.Text = dr1["Highest Degree"].ToString();
                                    major.Text = dr1["Major"].ToString();
                                    gradYear.Text = dr1["Graduation Year"].ToString();
                                    university.Text = dr1["University"].ToString();

                                    TextBox1.Text = dr1["Country Regional Focus"].ToString();
                                    DropDownList1.SelectedValue = dr1["OII Faculty Member"].ToString();
                                    if (dr1["CV location"].ToString() != null || dr1["CV location"].ToString().Length != 0)
                                    {

                                        CV.Text = dr1["FileName"].ToString();
                                        CV.NavigateUrl = dr1["CV location"].ToString();



                                    }

                                }

                                dr1.Close();

                                String qry3 = "select * from CareerStat where Faculty_ID='" + id + "'";
                                OleDbCommand com3 = new OleDbCommand(qry3, con);
                                OleDbDataReader dr3 = com3.ExecuteReader();
                                if (dr3.Read())
                                {
                                    funds.Text = dr3["Funds Received"].ToString();
                                    presentations.Text = dr3["Presentations"].ToString();
                                    numberOfProjects.Text = dr3["SponsoredProjects"].ToString();
                                    publications.Text = dr3["Publications"].ToString();
                                }



                            }
                            else
                            {



                            }
                            LoadSpokenLangToGrid();
                            LoadAwardHonorsToGrid();
                            LoadSponsoredProjectsToGrid();
                            LoadAgreementsGrid();
                            LoadAssociationsGrid();
                            LoadKeywordsGrid();
                            LoadLecturesGrid();
                            LoadInternationalTravelGrid();
                            LoadResearchexpertiseToGrid();
                            LoadResearchProjectsToGrid();
                            LoadRelevantCourseToGrid();

                        }
                        else
                        {


                            string qry2 = "insert into [FacultyDetails] ([Email]) values ('" + Session["aid"] + "')";
                            OleDbCommand comm = new OleDbCommand(qry2, con);
                            comm.ExecuteNonQuery();
                            OleDbCommand com1 = new OleDbCommand(qry, con);
                            dr.Close();
                            OleDbDataReader d = com.ExecuteReader();
                            if (d.Read())
                            {
                                id = Int32.Parse(d["ID"].ToString());
                                Session["id"] = id;
                            }
                            LoadSpokenLangToGrid();
                            LoadAwardHonorsToGrid();
                            LoadSponsoredProjectsToGrid();
                            LoadAgreementsGrid();
                            LoadAssociationsGrid();
                            LoadKeywordsGrid();
                            LoadLecturesGrid();
                            LoadInternationalTravelGrid();
                            LoadResearchexpertiseToGrid();
                            LoadResearchProjectsToGrid();
                            LoadRelevantCourseToGrid();

                        }

                        Response.Write("<script>alert('" + Session["id"] + ";)</script>");


                    }
                    else
                    {
                        Response.Redirect("http://ipaweb.gsu.edu/search/FacultyProfile/Website/OnlineFacultyForm/OnlineFacultyForm/FacultyLogin.aspx");
                    }
                }

            }
            catch (System.NullReferenceException)
            {
                String msg = "alert('Session Expired')";
                ClientScript.RegisterStartupScript(this.GetType(), "alert", msg + ";window.location='http://ipaweb.gsu.edu/search/FacultyProfile/Website/OnlineFacultyForm/OnlineFacultyForm/FacultyLogin.aspx';", true);

            }


        }


        protected void submitBtn_Click(object sender, EventArgs e)
        {
            OleDbConnection con = new OleDbConnection("Provider = Microsoft.ACE.OLEDB.12.0; Data Source = C:/Inetpub/oia_data_vd/FacultyProfile/Database/FacultyProfile.accdb");
            con.Open();
            string qry1 = "select * from  FacultyDetails  where  [Email] ='" + Session["aid"] + "'";
            OleDbCommand com = new OleDbCommand(qry1, con);
            OleDbDataReader dr = com.ExecuteReader();


            if (dr.Read() == false)
            {
                string qry2 = "insert into [FacultyDetails] ([First Name], [Last Name], [Phone Number], [Email],[Designation],[College],[Department],[Biography],[Profilepic Location],[FileName]) values ('" + firstName.Text + "','" + lastName.Text + "', '" + phone.Text + "', '" + Session["aid"] + "','" + designation.Text + "','" + college.Text + "','" + department.Text + "','" + TextArea1.Text + "','" + Profilepi.NavigateUrl + "','" + Profilepi.Text + "','" + DropDownList1.SelectedValue + "')";
                OleDbCommand comm = new OleDbCommand(qry2, con);
                comm.ExecuteNonQuery();
            }
            else
            {

                string qry = "update FacultyDetails set [First Name]='" + firstName.Text + "' ,[Last Name]='" + lastName.Text + "' , [Phone Number]='" + phone.Text + "' , [Designation] = '" + designation.Text + "', [College]='" + college.Text + "',[Department]='" + department.Text + "',[Biography]='" + TextArea1.Text + "',[Profilepic Location]='" + Profilepi.NavigateUrl + "' ,[FileName]='" + Profilepi.Text + "'  where ID=" + (int)Session["id"];
                OleDbCommand com1 = new OleDbCommand(qry, con);
                com1.ExecuteReader();
            }
            dr.Close();

            String qryy = "select * from FacultyDetails where Email='" + Session["aid"] + "'";
            OleDbCommand c = new OleDbCommand(qryy, con);
            OleDbDataReader d = com.ExecuteReader();
            if (d.Read())
            {
                id = Int32.Parse(d["ID"].ToString());

                Session["id"] = id;
            }

            string q1 = "select * from  [CareerStat]  where [Faculty_ID]='" + Session["id"] + "'";

            OleDbCommand c1 = new OleDbCommand(q1, con);
            OleDbDataReader dr1 = c1.ExecuteReader();
            if (dr1.Read() == false)
            {
                string qry2 = "insert into [CareerStat]  ([Funds Received], [Presentations], [SponsoredProjects], [Publications],[Faculty_ID]) values ('" + funds.Text + "','" + presentations.Text + "', '" + numberOfProjects.Text + "', '" + publications.Text + "','" + Session["id"] + "')";
                OleDbCommand comm = new OleDbCommand(qry2, con);
                comm.ExecuteNonQuery();
            }
            else
            {

                string query = "update [CareerStat] set [Funds Received]='" + funds.Text + "' ,[Presentations]='" + presentations.Text + "' , [SponsoredProjects]='" + numberOfProjects.Text + "' ,[Publications]='" + publications.Text + "'  where [Faculty_ID]='" + Session["id"] + "'";
                OleDbCommand command = new OleDbCommand(query, con);
                command.ExecuteNonQuery();
            }


            string quer = "select * from  [FacultySnapshots]  where [Faculty_ID]='" + Session["id"] + "'";

            OleDbCommand commnd = new OleDbCommand(quer, con);
            OleDbDataReader rd = commnd.ExecuteReader();

            if (rd.Read() == false)
            {
                string qry2 = "insert into FacultySnapshots  ([Highest Degree], [Major], [Graduation Year], [University],[Country Regional Focus],[CV location],[FileName],[OII Faculty Member],[Faculty_ID]) values ('" + degree.Text + "','" + major.Text + "', '" + gradYear.Text + "', '" + university.Text + "','" + TextBox1.Text + "','" + CV.NavigateUrl + "','" + CV.Text + "','" + DropDownList1.SelectedValue + "','" + Session["id"] + "')";
                OleDbCommand comm = new OleDbCommand(qry2, con);
                comm.ExecuteNonQuery();
            }
            else
            {

                string query = "update FacultySnapshots set [Highest Degree]='" + degree.Text + "' ,[Major]='" + major.Text + "' , [Graduation Year]='" + gradYear.Text + "' ,[University]='" + university.Text + "',[Country Regional Focus]='" + TextBox1.Text + "',[CV location]='" + CV.NavigateUrl + "',[FileName]='" + CV.Text + "',[OII Faculty Member]='" + DropDownList1.SelectedValue + "'  where [Faculty_ID]='" + Session["id"] + "'";
                OleDbCommand command = new OleDbCommand(query, con);
                command.ExecuteNonQuery();
            }




        }
        protected void gridView_RowEditing(object sender, GridViewEditEventArgs e)
        {
            researchTable.EditIndex = e.NewEditIndex;
            LoadResearchexpertiseToGrid();
        }


        protected void gridView_RowCommand(object sender, GridViewCommandEventArgs e)
        {

        }
        protected void gridView_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

            OleDbConnection con = new OleDbConnection("Provider = Microsoft.ACE.OLEDB.12.0; Data Source = C:/Inetpub/oia_data_vd/FacultyProfile/Database/FacultyProfile.accdb");
            string id = researchProject.DataKeys[e.RowIndex].Values["id"].ToString();
            TextBox box1 = (TextBox)researchTable.Rows[e.RowIndex].Cells[1].FindControl("research1");




            con.Open();
            OleDbCommand cmd = new OleDbCommand("update ResearchExpertise set  [Research Expertise]='" + box1.Text + "' where [Faculty_ID] ='" + Session["id"].ToString(), con);
            cmd.ExecuteNonQuery();
            con.Close();

            researchProject.EditIndex = -1;
            LoadResearchexpertiseToGrid();
        }

        protected void gridView_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            researchProject.EditIndex = -1;
            LoadResearchexpertiseToGrid();
        }
        protected void uploadCV(object sender, EventArgs e)
        {

            if (cvUpload.HasFile)
            {

                string fileName = cvUpload.FileName;

                string extension = System.IO.Path.GetExtension(fileName);

                //if ((extension == ".png") || (extension == ".jpg"))
                //{

                System.IO.Directory.CreateDirectory(Server.MapPath("Faculty_ProfilePics/" + firstName.Text + "_" + lastName.Text + "_" + "CV" + "/"));
                cvUpload.PostedFile.SaveAs(Server.MapPath("Faculty_ProfilePics/" + firstName.Text + "_" + lastName.Text + "_" + "CV" + "/" + fileName));
                cvupload_status.Text = "Your file was uploaded successfully.";

                cvUrl = "~/FacultyProfile/Website/OnlineFacultyForm/OnlineFacultyForm/Faculty_ProfilePics/" + firstName.Text + "_" + lastName.Text + "_" + "CV" + "/" + fileName;

                filename2 = fileName;

                if (url != null || url.Length != 0)
                {

                    CV.Text = fileName;
                    CV.NavigateUrl = cvUrl;


                }

            }
            else
            {
                cvupload_status.Text = "No pic chosen";
            }
            Response.Write("<script>alert('" + filename1 + "')</script>");
            Response.Write("<script>alert('" + url + "')</script>");



        }

        protected void uploadPic(object sender, EventArgs e)
        {

            if (profilePic.HasFile)
            {

                string fileName = profilePic.FileName;

                string extension = System.IO.Path.GetExtension(fileName);

                //if ((extension == ".png") || (extension == ".jpg"))
                //{

                System.IO.Directory.CreateDirectory(Server.MapPath("Faculty_ProfilePics/" + firstName.Text + "_" + lastName.Text + "/"));
                profilePic.PostedFile.SaveAs(Server.MapPath("Faculty_ProfilePics/" + firstName.Text + "_" + lastName.Text + "/" + fileName));
                profilePic_uploadStatus.Text = "Your file was uploaded successfully.";
                System.Web.UI.WebControls.Image imageButton = new System.Web.UI.WebControls.Image();
                imageButton.ImageUrl = "~/FacultyProfile/Website/OnlineFacultyForm/OnlineFacultyForm/Faculty_ProfilePics/" + firstName.Text + "_" + lastName.Text + "/" + fileName;
                imageButton.Height = Unit.Pixel(150);
                imageButton.Width = Unit.Pixel(150);
                Panel1.Controls.Add(imageButton);
                url = imageButton.ImageUrl.ToString();
                filename1 = fileName;
                //}
                //else
                //{
                //   profilePic_uploadStatus.Text = "Your file was not uploaded because it does not have a .jpg or .png extension.";
                //}
                if (url != null || url.Length != 0)
                {

                    Profilepi.Text = fileName;
                    Profilepi.NavigateUrl = url;


                }

            }
            else
            {
                profilePic_uploadStatus.Text = "No pic chosen";
            }
            Response.Write("<script>alert('" + filename1 + "')</script>");
            Response.Write("<script>alert('" + url + "')</script>");



        }

        private void SetInitialRow()

        {

            DataTable dt = new DataTable();

            DataRow dr = null;

            //dt.Columns.Add(new DataColumn("RowNumber", typeof(string)));

            dt.Columns.Add(new DataColumn("Column1", typeof(string)));

            dt.Columns.Add(new DataColumn("Column2", typeof(string)));

            //dt.Columns.Add(new DataColumn("Column3", typeof(string)));

            dr = dt.NewRow();

            //dr["RowNumber"] = 1;

            dr["Column1"] = string.Empty;

            dr["Column2"] = string.Empty;

            //dr["Column3"] = string.Empty;

            dt.Rows.Add(dr);

            dr = dt.NewRow();



            //Store the DataTable in ViewState

            ViewState["spokenLangTable"] = dt;
            ViewState["researchExpertiseTable"] = dt;
            ViewState["awardsHonorsTable"] = dt;
            ViewState["ProjectsTable"] = dt;
            ViewState["sponsoredProjectsTable"] = dt;
            ViewState["intlTravelTable"] = dt;
            ViewState["lecturesTable"] = dt;
            ViewState["associationsTable"] = dt;
            ViewState["agreementsTable"] = dt;
            ViewState["keywordsTable"] = dt;
            ViewState["relevantCourseTable"] = dt;

            researchProject.DataSource = dt;
            spokenLang.DataSource = dt;
            awardsHonors.DataSource = dt;
            sponsoredProjectsGrid.DataSource = dt;
            IntlTravel.DataSource = dt;
            lecture.DataSource = dt;
            associationsGrid.DataSource = dt;
            agreementsGrid.DataSource = dt;
            keywordsGrid.DataSource = dt;
            researchTable.DataSource = dt;
            relevantcourse.DataSource = dt;





        }


        protected void LoadSpokenLangToGrid()
        {


            OleDbConnection con = new OleDbConnection("Provider = Microsoft.ACE.OLEDB.12.0; Data Source = C:/Inetpub/oia_data_vd/FacultyProfile/Database/FacultyProfile.accdb");
            con.Open();
            String qry1 = "select * from SpokenLanguages where Faculty_ID='" + id + "'";
            OleDbCommand cmd = new OleDbCommand(qry1, con);

            OleDbDataAdapter da = new OleDbDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);

            int count = ds.Tables[0].Rows.Count;
            int langRowIndex = 0;
            con.Close();
            if (ds.Tables[0].Rows.Count > 0)
            {

                DataTable dt = ds.Tables[0];

                spokenLang.DataSource = ds;
                spokenLang.DataBind();


                ViewState["spokenLangTable"] = dt;

                /*for(int i=0;i< ds.Tables[0].Rows.Count; i++)
                  {

                      DropDownList ddl = (DropDownList)spokenLang.Rows[i].FindControl("fluency1");
                      ddl.DataSource = ds;
                      ddl.DataTextField = "Fluency";
                      ddl.DataValueField = "Fluency";
                      ddl.DataBind();



                  }*/
            }
            else
            {

                ds.Tables[0].Rows.Add(ds.Tables[0].NewRow());
                spokenLang.DataSource = ds;
                spokenLang.DataBind();
                int columncount = spokenLang.Rows[0].Cells.Count;
                ViewState["spokenLangTable"] = ds.Tables[0];


            }

            con.Close();
        }

        protected void LoadRelevantCourseToGrid()
        {


            OleDbConnection con = new OleDbConnection("Provider = Microsoft.ACE.OLEDB.12.0; Data Source = C:/Inetpub/oia_data_vd/FacultyProfile/Database/FacultyProfile.accdb");
            con.Open();
            String qry1 = "select * from RelevantCourses where Faculty_ID='" + Session["id"] + "'";

            OleDbCommand cmd = new OleDbCommand(qry1, con);

            OleDbDataAdapter da = new OleDbDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);

            int count = ds.Tables[0].Rows.Count;
            int langRowIndex = 0;
            con.Close();
            if (ds.Tables[0].Rows.Count > 0)
            {

                DataTable dt = ds.Tables[0];

                relevantcourse.DataSource = ds;
                relevantcourse.DataBind();
                ViewState["relevantCourseTable"] = dt;
            }
            else
            {

                ds.Tables[0].Rows.Add(ds.Tables[0].NewRow());
                relevantcourse.DataSource = ds;
                relevantcourse.DataBind();
                int columncount = relevantcourse.Rows[0].Cells.Count;
                ViewState["relevantCourseTable"] = ds.Tables[0];
            }


            con.Close();
        }



        protected void LoadAwardHonorsToGrid()
        {


            OleDbConnection con = new OleDbConnection("Provider = Microsoft.ACE.OLEDB.12.0; Data Source = C:/Inetpub/oia_data_vd/FacultyProfile/Database/FacultyProfile.accdb");
            con.Open();
            String qry1 = "select * from AwardHonors where Faculty_ID='" + Session["id"] + "'";
            OleDbCommand cmd = new OleDbCommand(qry1, con);

            OleDbDataAdapter da = new OleDbDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);

            int count = ds.Tables[0].Rows.Count;
            int langRowIndex = 0;
            con.Close();
            if (ds.Tables[0].Rows.Count > 0)
            {

                DataTable dt = ds.Tables[0];

                awardsHonors.DataSource = ds;
                awardsHonors.DataBind();
                ViewState["awardsHonorsTable"] = dt;
            }
            else
            {

                ds.Tables[0].Rows.Add(ds.Tables[0].NewRow());
                awardsHonors.DataSource = ds;
                awardsHonors.DataBind();
                int columncount = awardsHonors.Rows[0].Cells.Count;
                ViewState["awardsHonorsTable"] = ds.Tables[0];

            }

            con.Close();
        }
        protected void LoadSponsoredProjectsToGrid()
        {


            OleDbConnection con = new OleDbConnection("Provider = Microsoft.ACE.OLEDB.12.0; Data Source = C:/Inetpub/oia_data_vd/FacultyProfile/Database/FacultyProfile.accdb");
            con.Open();
            String qry1 = "select * from SponsoredProjects where Faculty_ID='" + Session["id"] + "'";
            OleDbCommand cmd = new OleDbCommand(qry1, con);

            OleDbDataAdapter da = new OleDbDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);

            int count = ds.Tables[0].Rows.Count;
            int langRowIndex = 0;
            con.Close();
            if (ds.Tables[0].Rows.Count > 0)
            {

                DataTable dt = ds.Tables[0];

                sponsoredProjectsGrid.DataSource = ds;
                sponsoredProjectsGrid.DataBind();
                ViewState["sponsoredProjectsTable"] = dt;
            }
            else
            {

                ds.Tables[0].Rows.Add(ds.Tables[0].NewRow());
                sponsoredProjectsGrid.DataSource = ds;
                sponsoredProjectsGrid.DataBind();
                int columncount = sponsoredProjectsGrid.Rows[0].Cells.Count;
                ViewState["sponsoredProjectsTable"] = ds.Tables[0];


            }

            con.Close();
        }
        protected void LoadResearchProjectsToGrid()
        {


            OleDbConnection con = new OleDbConnection("Provider = Microsoft.ACE.OLEDB.12.0; Data Source = C:/Inetpub/oia_data_vd/FacultyProfile/Database/FacultyProfile.accdb");
            con.Open();
            String qry1 = "select * from ResearchProjects where Faculty_ID='" + Session["id"] + "'";
            OleDbCommand cmd = new OleDbCommand(qry1, con);

            OleDbDataAdapter da = new OleDbDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);

            int count = ds.Tables[0].Rows.Count;
            int langRowIndex = 0;
            con.Close();
            if (ds.Tables[0].Rows.Count > 0)
            {

                DataTable dt = ds.Tables[0];

                researchProject.DataSource = ds;
                researchProject.DataBind();
                ViewState["ProjectsTable"] = dt;
            }
            else
            {

                ds.Tables[0].Rows.Add(ds.Tables[0].NewRow());
                researchProject.DataSource = ds;
                researchProject.DataBind();
                int columncount = researchProject.Rows[0].Cells.Count;
                ViewState["ProjectsTable"] = ds.Tables[0];


            }

            con.Close();
        }


        protected void LoadResearchexpertiseToGrid()
        {


            OleDbConnection con = new OleDbConnection("Provider = Microsoft.ACE.OLEDB.12.0; Data Source = C:/Inetpub/oia_data_vd/FacultyProfile/Database/FacultyProfile.accdb");
            con.Open();

            String qry1 = "select * from ResearchExpertise where Faculty_ID='" + Session["id"] + "'";
            OleDbCommand cmd = new OleDbCommand(qry1, con);

            OleDbDataAdapter da = new OleDbDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);

            int count = ds.Tables[0].Rows.Count;
            int langRowIndex = 0;
            con.Close();
            if (ds.Tables[0].Rows.Count > 0)
            {

                DataTable dt = ds.Tables[0];

                researchTable.DataSource = ds;
                researchTable.DataBind();
                ViewState["researchExpertiseTable"] = dt;
            }
            else
            {

                ds.Tables[0].Rows.Add(ds.Tables[0].NewRow());
                researchTable.DataSource = ds;
                researchTable.DataBind();
                int columncount = researchTable.Rows[0].Cells.Count;
                ViewState["researchExpertiseTable"] = ds.Tables[0];

            }

            con.Close();
        }
        protected void LoadLecturesGrid()
        {


            OleDbConnection con = new OleDbConnection("Provider = Microsoft.ACE.OLEDB.12.0; Data Source = C:/Inetpub/oia_data_vd/FacultyProfile/Database/FacultyProfile.accdb");
            con.Open();
            String qry1 = "select * from Lectures where Faculty_ID='" + Session["id"] + "'";
            OleDbCommand cmd = new OleDbCommand(qry1, con);

            OleDbDataAdapter da = new OleDbDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);

            int count = ds.Tables[0].Rows.Count;
            int langRowIndex = 0;
            con.Close();
            if (ds.Tables[0].Rows.Count > 0)
            {

                DataTable dt = ds.Tables[0];

                lecture.DataSource = ds;
                lecture.DataBind();
                ViewState["lecturesTable"] = dt;
            }
            else
            {

                ds.Tables[0].Rows.Add(ds.Tables[0].NewRow());
                lecture.DataSource = ds;
                lecture.DataBind();
                int columncount = lecture.Rows[0].Cells.Count;
                ViewState["lecturesTable"] = ds.Tables[0];


            }

            con.Close();
        }
        protected void LoadAssociationsGrid()
        {


            OleDbConnection con = new OleDbConnection("Provider = Microsoft.ACE.OLEDB.12.0; Data Source = C:/Inetpub/oia_data_vd/FacultyProfile/Database/FacultyProfile.accdb");
            con.Open();
            String qry1 = "select * from InternationalAssociations where Faculty_ID='" + Session["id"] + "'";
            OleDbCommand cmd = new OleDbCommand(qry1, con);

            OleDbDataAdapter da = new OleDbDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);

            int count = ds.Tables[0].Rows.Count;
            int langRowIndex = 0;
            con.Close();
            if (ds.Tables[0].Rows.Count > 0)
            {

                DataTable dt = ds.Tables[0];

                associationsGrid.DataSource = ds;
                associationsGrid.DataBind();
                ViewState["associationsTable"] = dt;
            }
            else
            {

                ds.Tables[0].Rows.Add(ds.Tables[0].NewRow());
                associationsGrid.DataSource = ds;
                associationsGrid.DataBind();
                int columncount = associationsGrid.Rows[0].Cells.Count;
                ViewState["associationsTable"] = ds.Tables[0];


            }

            con.Close();
        }
        protected void LoadAgreementsGrid()
        {


            OleDbConnection con = new OleDbConnection("Provider = Microsoft.ACE.OLEDB.12.0; Data Source = C:/Inetpub/oia_data_vd/FacultyProfile/Database/FacultyProfile.accdb");
            con.Open();
            String qry1 = "select * from CurrentAgreements where Faculty_ID='" + Session["id"] + "'";
            OleDbCommand cmd = new OleDbCommand(qry1, con);

            OleDbDataAdapter da = new OleDbDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);

            int count = ds.Tables[0].Rows.Count;
            int langRowIndex = 0;
            con.Close();
            if (ds.Tables[0].Rows.Count > 0)
            {

                DataTable dt = ds.Tables[0];

                agreementsGrid.DataSource = ds;
                agreementsGrid.DataBind();
                ViewState["agreementsTable"] = dt;
            }
            else
            {

                ds.Tables[0].Rows.Add(ds.Tables[0].NewRow());
                agreementsGrid.DataSource = ds;
                agreementsGrid.DataBind();
                int columncount = agreementsGrid.Rows[0].Cells.Count;
                ViewState["agreementsTable"] = ds.Tables[0];


            }

            con.Close();
        }
        protected void LoadKeywordsGrid()
        {


            OleDbConnection con = new OleDbConnection("Provider = Microsoft.ACE.OLEDB.12.0; Data Source = C:/Inetpub/oia_data_vd/FacultyProfile/Database/FacultyProfile.accdb");
            con.Open();
            String qry1 = "select * from Keywords where Faculty_ID='" + Session["id"] + "'";
            OleDbCommand cmd = new OleDbCommand(qry1, con);

            OleDbDataAdapter da = new OleDbDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);

            int count = ds.Tables[0].Rows.Count;

            con.Close();
            if (ds.Tables[0].Rows.Count > 0)
            {

                DataTable dt = ds.Tables[0];

                keywordsGrid.DataSource = ds;
                keywordsGrid.DataBind();
                ViewState["keywordsTable"] = dt;
            }
            else
            {

                ds.Tables[0].Rows.Add(ds.Tables[0].NewRow());
                keywordsGrid.DataSource = ds;
                keywordsGrid.DataBind();
                int columncount = keywordsGrid.Rows[0].Cells.Count;
                ViewState["keywordsTable"] = ds.Tables[0];


            }

            con.Close();
        }

        protected void LoadInternationalTravelGrid()
        {


            OleDbConnection con = new OleDbConnection("Provider = Microsoft.ACE.OLEDB.12.0; Data Source = C:/Inetpub/oia_data_vd/FacultyProfile/Database/FacultyProfile.accdb");
            con.Open();
            String qry1 = "select * from InternationalTravel where Faculty_ID='" + Session["id"] + "'";
            OleDbCommand cmd = new OleDbCommand(qry1, con);

            OleDbDataAdapter da = new OleDbDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);

            int count = ds.Tables[0].Rows.Count;
            int langRowIndex = 0;
            con.Close();
            if (ds.Tables[0].Rows.Count > 0)
            {

                DataTable dt = ds.Tables[0];

                IntlTravel.DataSource = ds;
                IntlTravel.DataBind();
                ViewState["intlTravelTable"] = dt;
            }
            else
            {

                ds.Tables[0].Rows.Add(ds.Tables[0].NewRow());
                IntlTravel.DataSource = ds;
                IntlTravel.DataBind();
                int columncount = IntlTravel.Rows[0].Cells.Count;
                ViewState["intlTravelTable"] = ds.Tables[0];


            }

            con.Close();
        }


        private void AddSpokenLangToGrid()

        {

            int rowIndex = 0;

            if (ViewState["spokenLangTable"] != null)

            {

                DataTable dtSpokenLangTable = (DataTable)ViewState["spokenLangTable"];

                DataRow drCurrentRow = null;

                if (dtSpokenLangTable.Rows.Count > 0)

                {
                    OleDbConnection con = new OleDbConnection("Provider = Microsoft.ACE.OLEDB.12.0; Data Source = C:/Inetpub/oia_data_vd/FacultyProfile/Database/FacultyProfile.accdb");
                    con.Open();
                    OleDbCommand com1 = new OleDbCommand("delete * from SpokenLanguages where Faculty_ID='" + Session["id"] + "'", con);
                    com1.ExecuteNonQuery();

                    for (int i = 1; i <= dtSpokenLangTable.Rows.Count; i++)

                    {




                        TextBox box1 = (TextBox)spokenLang.Rows[rowIndex].Cells[1].FindControl("spokenLang1");

                        DropDownList box2 = (DropDownList)spokenLang.Rows[rowIndex].Cells[2].FindControl("fluency1");



                        drCurrentRow = dtSpokenLangTable.NewRow();


                        dtSpokenLangTable.Rows[i - 1]["Language"] = box1.Text;

                        dtSpokenLangTable.Rows[i - 1]["Fluency"] = box2.Text;



                        string qry = "insert into SpokenLanguages ([Language],[Fluency], [Faculty_ID]) values('" + box1.Text + "','" + box2.Text + "','" + Session["id"].ToString() + "')";

                        OleDbCommand com = new OleDbCommand(qry, con);
                        com.ExecuteNonQuery();
                        rowIndex++;


                    }

                    dtSpokenLangTable.Rows.Add(drCurrentRow);

                    ViewState["spokenLangTable"] = dtSpokenLangTable;



                    spokenLang.DataSource = dtSpokenLangTable;

                    spokenLang.DataBind();


                }

            }

            else

            {

                Response.Write("ViewState is null");

            }
            //Set Previous Data on Postbacks
            SetPreviousSpokenLangData();
        }

        private void AddAwardsHonorsToGrid()
        {
            int rowIndex1 = 0;
            if (ViewState["awardsHonorsTable"] != null)
            {
                DataTable dtAwardsHonorsTable = (DataTable)ViewState["awardsHonorsTable"];
                DataRow drCurrentRow = null;

                if (dtAwardsHonorsTable.Rows.Count > 0)
                {

                    OleDbConnection con = new OleDbConnection("Provider = Microsoft.ACE.OLEDB.12.0; Data Source = C:/Inetpub/oia_data_vd/FacultyProfile/Database/FacultyProfile.accdb");
                    con.Open();
                    OleDbCommand com1 = new OleDbCommand("delete * from AwardHonors where Faculty_ID='" + Session["id"] + "'", con);
                    com1.ExecuteNonQuery();
                    for (int i = 1; i <= dtAwardsHonorsTable.Rows.Count; i++)
                    {

                        TextBox box1 = (TextBox)awardsHonors.Rows[rowIndex1].Cells[1].FindControl("awardhonor");
                        drCurrentRow = dtAwardsHonorsTable.NewRow();
                        dtAwardsHonorsTable.Rows[i - 1]["Honor Award"] = box1.Text;

                        string qry = "insert into AwardHonors ([Honor Award], [Faculty_ID]) values('" + box1.Text + "','" + Session["id"].ToString() + "')";

                        OleDbCommand com = new OleDbCommand(qry, con);
                        com.ExecuteNonQuery();
                        rowIndex1++;
                    }

                    dtAwardsHonorsTable.Rows.Add(drCurrentRow);

                    ViewState["awardsHonorsTable"] = dtAwardsHonorsTable;
                    awardsHonors.DataSource = dtAwardsHonorsTable;

                }
            }
            else
            {
                Response.Write("ViewState is null");
            }

            SetPreviousHonorsAwardsData();
        }

        private void AddProjectsToGrid()
        {
            int rowIndex1 = 0;
            if (ViewState["ProjectsTable"] != null)
            {
                DataTable dtProjectsTable = (DataTable)ViewState["ProjectsTable"];
                DataRow drCurrentRow = null;
                OleDbConnection con = new OleDbConnection("Provider = Microsoft.ACE.OLEDB.12.0; Data Source = C:/Inetpub/oia_data_vd/FacultyProfile/Database/FacultyProfile.accdb");
                con.Open();
                OleDbCommand com1 = new OleDbCommand("delete * from ResearchProjects where Faculty_ID='" + Session["id"] + "'", con);
                com1.ExecuteNonQuery();

                if (dtProjectsTable.Rows.Count > 0)
                {
                    for (int i = 1; i <= dtProjectsTable.Rows.Count; i++)
                    {

                        TextBox box1 = (TextBox)researchProject.Rows[rowIndex1].Cells[1].FindControl("projectfield");

                        drCurrentRow = dtProjectsTable.NewRow();
                        dtProjectsTable.Rows[i - 1]["Research Project"] = box1.Text;
                        string qry = "insert into ResearchProjects ([Research Project], [Faculty_ID]) values('" + box1.Text + "','" + Session["id"].ToString() + "')";

                        OleDbCommand com = new OleDbCommand(qry, con);
                        com.ExecuteNonQuery();
                        rowIndex1++;
                    }

                    dtProjectsTable.Rows.Add(drCurrentRow);

                    ViewState["ProjectsTable"] = dtProjectsTable;

                    researchProject.DataSource = dtProjectsTable;
                    researchProject.DataBind();

                }

            }

            else

            {

                Response.Write("ViewState is null");

            }

            //Set Previous Data on Postbacks

            SetPreviousProjectsData();
        }
        private void AddLecturesToGrid()
        {
            int rowIndex1 = 0;
            if (ViewState["lecturesTable"] != null)
            {
                DataTable dtlecturesTable = (DataTable)ViewState["lecturesTable"];
                DataRow drCurrentRow = null;
                OleDbConnection con = new OleDbConnection("Provider = Microsoft.ACE.OLEDB.12.0; Data Source = C:/Inetpub/oia_data_vd/FacultyProfile/Database/FacultyProfile.accdb");
                con.Open();
                OleDbCommand com1 = new OleDbCommand("delete * from Lectures where Faculty_ID='" + Session["id"] + "'", con);
                com1.ExecuteNonQuery();

                if (dtlecturesTable.Rows.Count > 0)
                {
                    for (int i = 1; i <= dtlecturesTable.Rows.Count; i++)
                    {
                        TextBox box1 = (TextBox)lecture.Rows[rowIndex1].Cells[1].FindControl("country1");
                        TextBox box2 = (TextBox)lecture.Rows[rowIndex1].Cells[1].FindControl("lecture1");

                        drCurrentRow = dtlecturesTable.NewRow();
                        dtlecturesTable.Rows[i - 1]["Country"] = box1.Text;
                        dtlecturesTable.Rows[i - 1]["Lecture"] = box2.Text;
                        string qry = "insert into Lectures ([Lecture],[Country], [Faculty_ID]) values('" + box1.Text + "','" + box2.Text + "','" + Session["id"].ToString() + "')";

                        OleDbCommand com = new OleDbCommand(qry, con);
                        com.ExecuteNonQuery();
                        rowIndex1++;
                    }

                    dtlecturesTable.Rows.Add(drCurrentRow);

                    ViewState["lecturesTable"] = dtlecturesTable;

                    lecture.DataSource = dtlecturesTable;
                    lecture.DataBind();
                }
            }
            else
            {
                Response.Write("ViewState is null");

            }

            //Set Previous Data on Postbacks

            SetPreviousLecturesData();
        }

        private void AddAssociationsToGrid()
        {
            int rowIndex1 = 0;
            if (ViewState["associationsTable"] != null)
            {
                DataTable dtassociationsTable = (DataTable)ViewState["associationsTable"];
                DataRow drCurrentRow = null;
                OleDbConnection con = new OleDbConnection("Provider = Microsoft.ACE.OLEDB.12.0; Data Source = C:/Inetpub/oia_data_vd/FacultyProfile/Database/FacultyProfile.accdb");
                con.Open();
                OleDbCommand com1 = new OleDbCommand("delete * from InternationalAssociations where Faculty_ID='" + Session["id"] + "'", con);
                com1.ExecuteNonQuery();

                if (dtassociationsTable.Rows.Count > 0)
                {
                    for (int i = 1; i <= dtassociationsTable.Rows.Count; i++)
                    {
                        TextBox box1 = (TextBox)associationsGrid.Rows[rowIndex1].Cells[1].FindControl("associationfield");

                        drCurrentRow = dtassociationsTable.NewRow();
                        dtassociationsTable.Rows[i - 1]["Association"] = box1.Text;

                        string qry = "insert into InternationalAssociations ([Association],  [Faculty_ID]) values('" + box1.Text + "','" + Session["id"].ToString() + "')";

                        OleDbCommand com = new OleDbCommand(qry, con);
                        com.ExecuteNonQuery();
                        rowIndex1++;

                    }

                    dtassociationsTable.Rows.Add(drCurrentRow);

                    ViewState["associationsTable"] = dtassociationsTable;

                    associationsGrid.DataSource = dtassociationsTable;
                    associationsGrid.DataBind();
                }
            }
            else
            {
                Response.Write("ViewState is null");

            }

            //Set Previous Data on Postbacks

            SetPreviousLecturesData();
        }

        private void AddAgreementsToGrid()
        {
            int rowIndex1 = 0;
            if (ViewState["agreementsTable"] != null)
            {
                DataTable dtagreementsTable = (DataTable)ViewState["agreementsTable"];
                DataRow drCurrentRow = null;
                OleDbConnection con = new OleDbConnection("Provider = Microsoft.ACE.OLEDB.12.0; Data Source = C:/Inetpub/oia_data_vd/FacultyProfile/Database/FacultyProfile.accdb");
                con.Open();
                OleDbCommand com1 = new OleDbCommand("delete * from CurrentAgreements where Faculty_ID='" + Session["id"] + "'", con);
                com1.ExecuteNonQuery();

                if (dtagreementsTable.Rows.Count > 0)
                {
                    for (int i = 1; i <= dtagreementsTable.Rows.Count; i++)
                    {
                        TextBox box1 = (TextBox)agreementsGrid.Rows[rowIndex1].Cells[1].FindControl("agreementsfield");

                        drCurrentRow = dtagreementsTable.NewRow();
                        dtagreementsTable.Rows[i - 1]["Agreement"] = box1.Text;

                        string qry = "insert into CurrentAgreements ([Agreement],  [Faculty_ID]) values('" + box1.Text + "','" + Session["id"].ToString() + "')";

                        OleDbCommand com = new OleDbCommand(qry, con);
                        com.ExecuteNonQuery();
                        rowIndex1++;

                    }

                    dtagreementsTable.Rows.Add(drCurrentRow);

                    ViewState["agreementsTable"] = dtagreementsTable;

                    agreementsGrid.DataSource = dtagreementsTable;
                    agreementsGrid.DataBind();
                }
            }
            else
            {
                Response.Write("ViewState is null");

            }

            //Set Previous Data on Postbacks

            SetPreviousAgreementsData();
        }

        private void AddResearchExpertiseToGrid()
        {
            {
                int rowIndex1 = 0;
                if (ViewState["researchExpertiseTable"] != null)
                {
                    DataTable dtresearchExpertiseTable = (DataTable)ViewState["researchExpertiseTable"];
                    DataRow drCurrentRow = null;

                    if (dtresearchExpertiseTable.Rows.Count > 0)
                    {
                        OleDbConnection con = new OleDbConnection("Provider = Microsoft.ACE.OLEDB.12.0; Data Source = C:/Inetpub/oia_data_vd/FacultyProfile/Database/FacultyProfile.accdb");
                        con.Open();
                        OleDbCommand com1 = new OleDbCommand("delete * from ResearchExpertise where Faculty_ID='" + Session["id"] + "'", con);
                        com1.ExecuteNonQuery();


                        for (int i = 1; i <= dtresearchExpertiseTable.Rows.Count; i++)
                        {
                            TextBox box1 = (TextBox)researchTable.Rows[rowIndex1].Cells[1].FindControl("research1");

                            drCurrentRow = dtresearchExpertiseTable.NewRow();
                            dtresearchExpertiseTable.Rows[i - 1]["Research Expertise"] = box1.Text;




                            string qry = "insert into ResearchExpertise ([Research Expertise], [Faculty_ID]) values('" + box1.Text + "','" + Session["id"].ToString() + "')";

                            OleDbCommand com = new OleDbCommand(qry, con);
                            com.ExecuteNonQuery();
                            rowIndex1++;



                        }

                        dtresearchExpertiseTable.Rows.Add(drCurrentRow);

                        ViewState["researchExpertiseTable"] = dtresearchExpertiseTable;

                        researchTable.DataSource = dtresearchExpertiseTable;
                        researchTable.DataBind();
                    }
                }
                else
                {
                    Response.Write("ViewState is null");

                }

            }

        }
        private void AddRelevantCourseToGrid()
        {

            int rowIndex1 = 0;
            if (ViewState["relevantCourseTable"] != null)
            {
                DataTable dtrelevantCourseTable = (DataTable)ViewState["relevantCourseTable"];
                DataRow drCurrentRow = null;

                if (dtrelevantCourseTable.Rows.Count > 0)
                {
                    OleDbConnection con = new OleDbConnection("Provider = Microsoft.ACE.OLEDB.12.0; Data Source = C:/Inetpub/oia_data_vd/FacultyProfile/Database/FacultyProfile.accdb");
                    con.Open();
                    OleDbCommand com1 = new OleDbCommand("delete * from RelevantCourses where Faculty_ID='" + Session["id"] + "'", con);
                    com1.ExecuteNonQuery();

                    for (int i = 1; i <= dtrelevantCourseTable.Rows.Count; i++)
                    {
                        TextBox box1 = (TextBox)relevantcourse.Rows[rowIndex1].Cells[1].FindControl("courseNumber1");
                        TextBox box2 = (TextBox)relevantcourse.Rows[rowIndex1].Cells[1].FindControl("course1");

                        drCurrentRow = dtrelevantCourseTable.NewRow();
                        dtrelevantCourseTable.Rows[i - 1]["Course Number"] = box1.Text;
                        dtrelevantCourseTable.Rows[i - 1]["Course Name"] = box2.Text;
                        string qry = "insert into RelevantCourses ([Course Number], [Course Name], [Faculty_ID]) values('" + box1.Text + "','" + box2.Text + "','" + Session["id"].ToString() + "')";

                        OleDbCommand com = new OleDbCommand(qry, con);
                        com.ExecuteNonQuery();
                        rowIndex1++;


                    }

                    dtrelevantCourseTable.Rows.Add(drCurrentRow);

                    ViewState["relevantCourseTable"] = dtrelevantCourseTable;
                    relevantcourse.DataSource = dtrelevantCourseTable;
                    relevantcourse.DataBind();
                }
            }
            else
            {
                Response.Write("ViewState is null");

            }

            //Set Previous Data on Postbacks

            SetPreviousRelevantCourseData();

        }
        private void AddKeywordsToGrid()
        {
            int rowIndex1 = 0;
            if (ViewState["keywordsTable"] != null)
            {
                DataTable dtkeywordsTable = (DataTable)ViewState["keywordsTable"];
                DataRow drCurrentRow = null;


                if (dtkeywordsTable.Rows.Count > 0)
                {
                    OleDbConnection con = new OleDbConnection("Provider = Microsoft.ACE.OLEDB.12.0; Data Source = C:/Inetpub/oia_data_vd/FacultyProfile/Database/FacultyProfile.accdb");
                    con.Open();
                    OleDbCommand com1 = new OleDbCommand("delete * from Keywords where Faculty_ID='" + Session["id"] + "'", con);
                    com1.ExecuteNonQuery();
                    for (int i = 1; i <= dtkeywordsTable.Rows.Count; i++)
                    {
                        TextBox box1 = (TextBox)keywordsGrid.Rows[rowIndex1].Cells[1].FindControl("keywordsfield");

                        drCurrentRow = dtkeywordsTable.NewRow();
                        dtkeywordsTable.Rows[i - 1]["Keyword"] = box1.Text;

                        string qry = "insert into Keywords ( [Keyword], [Faculty_ID]) values('" + box1.Text + "','" + Session["id"].ToString() + "')";

                        OleDbCommand com = new OleDbCommand(qry, con);
                        com.ExecuteNonQuery();
                        rowIndex1++;
                    }

                    dtkeywordsTable.Rows.Add(drCurrentRow);

                    ViewState["keywordsTable"] = dtkeywordsTable;

                    keywordsGrid.DataSource = dtkeywordsTable;
                    keywordsGrid.DataBind();
                }
            }
            else
            {
                Response.Write("ViewState is null");

            }

            //Set Previous Data on Postbacks

            SetPreviousKeywordsData();
        }

        private void AddIntlTravelToGrid()
        {
            int rowIndex1 = 0;
            if (ViewState["intlTravelTable"] != null)
            {
                DataTable dtIntlTravelTable = (DataTable)ViewState["intlTravelTable"];
                DataRow drCurrentRow = null;
                if (dtIntlTravelTable.Rows.Count > 0)
                {
                    OleDbConnection con = new OleDbConnection("Provider = Microsoft.ACE.OLEDB.12.0; Data Source = C:/Inetpub/oia_data_vd/FacultyProfile/Database/FacultyProfile.accdb");
                    con.Open();
                    OleDbCommand com1 = new OleDbCommand("delete * from InternationalTravel where Faculty_ID='" + Session["id"] + "'", con);
                    com1.ExecuteNonQuery();
                    for (int i = 1; i <= dtIntlTravelTable.Rows.Count; i++)
                    {
                        TextBox box = (TextBox)IntlTravel.Rows[rowIndex1].Cells[1].FindControl("travelinfo");

                        drCurrentRow = dtIntlTravelTable.NewRow();
                        dtIntlTravelTable.Rows[i - 1]["International Travel"] = box.Text;


                        string qry = "insert into InternationalTravel ( [International Travel], [Faculty_ID]) values('" + box.Text + "','" + Session["id"].ToString() + "')";

                        OleDbCommand com = new OleDbCommand(qry, con);
                        com.ExecuteNonQuery();
                        rowIndex1++;
                    }
                    dtIntlTravelTable.Rows.Add(drCurrentRow);
                    ViewState["intlTravelTable"] = dtIntlTravelTable;
                    IntlTravel.DataSource = dtIntlTravelTable;
                    IntlTravel.DataBind();
                }
            }
            else
            {
                Response.Write("ViewState is null");
            }
            SetPreviousIntlTravelData();

        }
        private void AddSponsoredProjectsToGrid()
        {
            int rowIndex1 = 0;
            if (ViewState["sponsoredProjectsTable"] != null)
            {
                DataTable dtSponsoredProjectsTable = (DataTable)ViewState["sponsoredProjectsTable"];
                DataRow drCurrentRow = null;

                if (dtSponsoredProjectsTable.Rows.Count > 0)
                {
                    OleDbConnection con = new OleDbConnection("Provider = Microsoft.ACE.OLEDB.12.0; Data Source = C:/Inetpub/oia_data_vd/FacultyProfile/Database/FacultyProfile.accdb");
                    con.Open();
                    OleDbCommand com1 = new OleDbCommand("delete * from SponsoredProjects where Faculty_ID='" + Session["id"] + "'", con);
                    com1.ExecuteNonQuery();
                    for (int i = 1; i <= dtSponsoredProjectsTable.Rows.Count; i++)
                    {

                        TextBox box1 = (TextBox)sponsoredProjectsGrid.Rows[rowIndex1].Cells[1].FindControl("sponsoredProject");

                        drCurrentRow = dtSponsoredProjectsTable.NewRow();
                        string qry = "insert into SponsoredProjects ( [Project], [Faculty_ID]) values('" + box1.Text + "','" + Session["id"].ToString() + "')";

                        OleDbCommand com = new OleDbCommand(qry, con);
                        com.ExecuteNonQuery();
                        dtSponsoredProjectsTable.Rows[i - 1]["Project"] = box1.Text;
                        rowIndex1++;




                    }

                    dtSponsoredProjectsTable.Rows.Add(drCurrentRow);

                    ViewState["sponsoredProjectsTable"] = dtSponsoredProjectsTable;
                    sponsoredProjectsGrid.DataSource = dtSponsoredProjectsTable;
                    sponsoredProjectsGrid.DataBind();

                }

            }

            else

            {

                Response.Write("ViewState is null");

            }

            //Set Previous Data on Postbacks

            SetPreviousSponsoredProjectsData();
        }
        private void SetPreviousLecturesData()
        {

            if (ViewState["lecturesTable"] != null)
            {
                DataTable dtlecturesTable = (DataTable)ViewState["lecturesTable"];

                if (dtlecturesTable.Rows.Count > 0)
                {
                    lecture.DataSource = dtlecturesTable;
                    lecture.DataBind();
                }
            }

        }
        private void SetPreviousRelevantCourseData()
        {

            if (ViewState["relevantCourseTable"] != null)
            {
                DataTable dtrelevantCourseTable = (DataTable)ViewState["relevantCourseTable"];

                if (dtrelevantCourseTable.Rows.Count > 0)
                {
                    relevantcourse.DataSource = dtrelevantCourseTable;
                    relevantcourse.DataBind();
                }
            }
        }
        private void SetPreviousResearchExpertiseData()
        {

            if (ViewState["researchExpertiseTable"] != null)
            {
                DataTable dtresearchExpertiseTable = (DataTable)ViewState["researchExpertiseTable"];

                if (dtresearchExpertiseTable.Rows.Count > 0)
                {
                    researchTable.DataSource = dtresearchExpertiseTable;
                    researchTable.DataBind();


                }
            }

        }

        private void SetPreviousAssociationsData()
        {

            if (ViewState["associationsTable"] != null)
            {
                DataTable dtassociationsTable = (DataTable)ViewState["associationsTable"];

                if (dtassociationsTable.Rows.Count > 0)
                {
                    associationsGrid.DataSource = dtassociationsTable;
                    associationsGrid.DataBind();
                }
            }

        }

        private void SetPreviousAgreementsData()
        {

            if (ViewState["agreementsTable"] != null)
            {
                DataTable dtagreementsTable = (DataTable)ViewState["agreementsTable"];

                if (dtagreementsTable.Rows.Count > 0)
                {
                    agreementsGrid.DataSource = dtagreementsTable;
                    agreementsGrid.DataBind();
                }
            }

        }

        private void SetPreviousKeywordsData()
        {

            if (ViewState["keywordsTable"] != null)
            {
                DataTable dtagreementsTable = (DataTable)ViewState["keywordsTable"];

                if (dtagreementsTable.Rows.Count > 0)
                {
                    keywordsGrid.DataSource = dtagreementsTable;
                    keywordsGrid.DataBind();
                }
            }

        }

        private void SetPreviousSpokenLangData()

        {

            int rowIndex = 0;

            if (ViewState["spokenLangTable"] != null)

            {

                DataTable dt = (DataTable)ViewState["spokenLangTable"];

                if (dt.Rows.Count > 0)

                {


                    spokenLang.DataSource = dt;
                    spokenLang.DataBind();

                }

            }

        }

        private void SetPreviousHonorsAwardsData()
        {
            int rowIndex = 0;

            if (ViewState["awardsHonorsTable"] != null)

            {

                DataTable dtHonorsAwards = (DataTable)ViewState["awardsHonorsTable"];

                if (dtHonorsAwards.Rows.Count > 0)

                {

                    awardsHonors.DataSource = dtHonorsAwards;
                    awardsHonors.DataBind();

                }

            }

        }

        private void SetPreviousProjectsData()
        {


            if (ViewState["ProjectsTable"] != null)

            {

                DataTable dtProjectsTable = (DataTable)ViewState["ProjectsTable"];

                if (dtProjectsTable.Rows.Count > 0)

                {
                    researchProject.DataSource = dtProjectsTable;
                    researchProject.DataBind();

                }

            }

        }

        private void SetPreviousSponsoredProjectsData()
        {
            int rowIndex = 0;

            if (ViewState["sponsoredProjectsTable"] != null)

            {

                DataTable dtSponsoredProjects = (DataTable)ViewState["sponsoredProjectsTable"];

                if (dtSponsoredProjects.Rows.Count > 0)

                {
                    sponsoredProjectsGrid.DataSource = dtSponsoredProjects;
                    sponsoredProjectsGrid.DataBind();

                }

            }

        }
        private void SetPreviousIntlTravelData()
        {
            int rowIndex = 0;
            if (ViewState["intlTravelTable"] != null)
            {
                DataTable dtintlTravelTable = (DataTable)ViewState["intlTravelTable"];

                if (dtintlTravelTable.Rows.Count > 0)
                {
                    IntlTravel.DataSource = dtintlTravelTable;
                    IntlTravel.DataBind();

                }

            }

        }
        protected void DeleteIntlTravel_Click(object sender, GridViewDeleteEventArgs e)
        {

            if (ViewState["intlTravelTable"] != null)
            {
                DataTable dt = (DataTable)ViewState["intlTravelTable"];
                int rowIndex = Convert.ToInt32(e.RowIndex);
                if (dt.Rows.Count >= 1)
                {
                    OleDbConnection con = new OleDbConnection("Provider = Microsoft.ACE.OLEDB.12.0; Data Source = C:/Inetpub/oia_data_vd/FacultyProfile/Database/FacultyProfile.accdb");
                    con.Open();
                    string stor_id = IntlTravel.DataKeys[e.RowIndex].Values[0].ToString();
                    if (stor_id.Length != 0)
                    {
                        OleDbCommand cmd = new OleDbCommand("delete from InternationalTravel where id=" + stor_id, con);
                        int result = cmd.ExecuteNonQuery();
                        con.Close();
                    }
                    dt.Rows.Remove(dt.Rows[rowIndex]);
                    ViewState["intlTravelTable"] = dt;
                    IntlTravel.DataSource = dt;
                    IntlTravel.DataBind();
                    SetPreviousIntlTravelData();
                    LoadInternationalTravelGrid();
                }
            }
        }
        protected void DeleteLectureProjects_Click(object sender, GridViewDeleteEventArgs e)
        {


            if (ViewState["lecturesTable"] != null)
            {
                DataTable dt = (DataTable)ViewState["lecturesTable"];
                int rowIndex = Convert.ToInt32(e.RowIndex);
                if (dt.Rows.Count >= 1)
                {
                    OleDbConnection con = new OleDbConnection("Provider = Microsoft.ACE.OLEDB.12.0; Data Source = C:/Inetpub/oia_data_vd/FacultyProfile/Database/FacultyProfile.accdb");
                    con.Open();
                    string stor_id = lecture.DataKeys[e.RowIndex].Values[0].ToString();
                    if (stor_id.Length != 0)
                    {
                        OleDbCommand cmd = new OleDbCommand("delete from Lectures where id=" + stor_id, con);
                        int result = cmd.ExecuteNonQuery();
                        con.Close();
                    }
                    dt.Rows.Remove(dt.Rows[rowIndex]);
                    ViewState["lecturesTable"] = dt;
                    lecture.DataSource = dt;
                    lecture.DataBind();
                    SetPreviousLecturesData();
                    LoadLecturesGrid();
                }
            }
        }

        protected void DeleteAssociations_Click(object sender, GridViewDeleteEventArgs e)
        {

            if (ViewState["associationsTable"] != null)
            {
                DataTable dt = (DataTable)ViewState["associationsTable"];
                int rowIndex = Convert.ToInt32(e.RowIndex);
                if (dt.Rows.Count >= 1)
                {
                    OleDbConnection con = new OleDbConnection("Provider = Microsoft.ACE.OLEDB.12.0; Data Source = C:/Inetpub/oia_data_vd/FacultyProfile/Database/FacultyProfile.accdb");
                    con.Open();
                    string stor_id = associationsGrid.DataKeys[e.RowIndex].Values[0].ToString();
                    if (stor_id.Length != 0)
                    {
                        OleDbCommand cmd = new OleDbCommand("delete from InternationalAssociations where id=" + stor_id, con);
                        int result = cmd.ExecuteNonQuery();
                        con.Close();
                    }
                    dt.Rows.Remove(dt.Rows[rowIndex]);
                    ViewState["associationsTable"] = dt;
                    associationsGrid.DataSource = dt;
                    associationsGrid.DataBind();
                    SetPreviousAssociationsData();
                    LoadAssociationsGrid();
                }
            }
        }

        protected void DeleteAgreements_Click(object sender, GridViewDeleteEventArgs e)
        {

            if (ViewState["agreementsTable"] != null)
            {
                DataTable dt = (DataTable)ViewState["agreementsTable"];
                int rowIndex = Convert.ToInt32(e.RowIndex);
                if (dt.Rows.Count >= 1)
                {
                    OleDbConnection con = new OleDbConnection("Provider = Microsoft.ACE.OLEDB.12.0; Data Source = C:/Inetpub/oia_data_vd/FacultyProfile/Database/FacultyProfile.accdb");
                    con.Open();
                    string stor_id = agreementsGrid.DataKeys[e.RowIndex].Values[0].ToString();
                    if (stor_id.Length != 0)
                    {
                        OleDbCommand cmd = new OleDbCommand("delete from CurrentAgreements where id=" + stor_id, con);
                        int result = cmd.ExecuteNonQuery();
                        con.Close();
                    }
                    dt.Rows.Remove(dt.Rows[rowIndex]);
                    ViewState["agreementsTable"] = dt;
                    agreementsGrid.DataSource = dt;
                    agreementsGrid.DataBind();
                    SetPreviousAgreementsData();
                    LoadAgreementsGrid();
                }
            }
        }

        protected void DeleteKeywords_Click(object sender, GridViewDeleteEventArgs e)
        {

            if (ViewState["keywordsTable"] != null)
            {

                DataTable dt = (DataTable)ViewState["keywordsTable"];
                int rowIndex = Convert.ToInt32(e.RowIndex);

                if (dt.Rows.Count >= 1)
                {
                    OleDbConnection con = new OleDbConnection("Provider = Microsoft.ACE.OLEDB.12.0; Data Source = C:/Inetpub/oia_data_vd/FacultyProfile/Database/FacultyProfile.accdb");
                    con.Open();
                    string stor_id = keywordsGrid.DataKeys[e.RowIndex].Values[0].ToString();
                    if (stor_id.Length != 0)
                    {

                        OleDbCommand cmd = new OleDbCommand("delete from Keywords where id=" + stor_id, con);
                        int result = cmd.ExecuteNonQuery();
                        con.Close();
                    }
                    dt.Rows.Remove(dt.Rows[rowIndex]);
                    ViewState["keywordsTable"] = dt;
                    keywordsGrid.DataSource = dt;
                    keywordsGrid.DataBind();
                    SetPreviousKeywordsData();
                    LoadKeywordsGrid();
                }
            }
        }


        protected void ButtonAdd_Click(object sender, EventArgs e)

        {

            Button button = (Button)sender;

            if (button != null)
            {
                if (button.ID == "ButtonAddSpokenLang")
                {
                    AddSpokenLangToGrid();
                }
                else if (button.ID == "ButtonAddAwardsHonors")
                {
                    AddAwardsHonorsToGrid();
                }
                else if (button.ID == "ButtonAddSponsoredProjects")
                {
                    AddSponsoredProjectsToGrid();
                }
                else if (button.ID == "ButtonAddProjects")
                {
                    AddProjectsToGrid();
                }
                else if (button.ID == "intlTravelButton")
                {
                    AddIntlTravelToGrid();
                }
                else if (button.ID == "lectureButton")
                {
                    AddLecturesToGrid();
                }
                else if (button.ID == "ButtonAddAssociations")
                {
                    AddAssociationsToGrid();
                }
                else if (button.ID == "ButtonAddAgreements")
                {
                    AddAgreementsToGrid();
                }
                else if (button.ID == "ButtonAddKeywords")
                {
                    AddKeywordsToGrid();
                }
                else if (button.ID == "ButtonAddResearchExpertise")
                {
                    AddResearchExpertiseToGrid();
                }
                else if (button.ID == "ButtonAddRelevantLecture")
                {
                    AddRelevantCourseToGrid();
                }

                //AddNewRowToGrid(button.ID);
            }
        }

        protected void DeleteSpokenLang_Click(object sender, GridViewDeleteEventArgs e)
        {


            if (ViewState["spokenLangTable"] != null)
            {
                DataTable dt = (DataTable)ViewState["spokenLangTable"];
                //DataRow drCurrentRow = null;
                int rowIndex = Convert.ToInt32(e.RowIndex);
                if (dt.Rows.Count >= 1)
                {
                    OleDbConnection con = new OleDbConnection("Provider = Microsoft.ACE.OLEDB.12.0; Data Source = C:/Inetpub/oia_data_vd/FacultyProfile/Database/FacultyProfile.accdb");
                    con.Open();
                    string stor_id = spokenLang.DataKeys[e.RowIndex].Values[0].ToString();
                    if (stor_id.Length != 0)
                    {
                        OleDbCommand cmd = new OleDbCommand("delete from SpokenLanguages where id=" + stor_id, con);
                        int result = cmd.ExecuteNonQuery();
                        con.Close();
                    }

                    dt.Rows.Remove(dt.Rows[rowIndex]);
                    //drCurrentRow = dt.NewRow();
                    ViewState["spokenLangTable"] = dt;
                    spokenLang.DataSource = dt;
                    spokenLang.DataBind();


                    SetPreviousSpokenLangData();
                    LoadSpokenLangToGrid();
                }
            }
        }
        protected void DeleteResearchExpertise_Click(object sender, GridViewDeleteEventArgs e)
        {



            if (ViewState["researchExpertiseTable"] != null)
            {
                DataTable dt = (DataTable)ViewState["researchExpertiseTable"];

                int rowIndex = Convert.ToInt32(e.RowIndex);

                if (dt.Rows.Count >= 1)
                {


                    OleDbConnection con = new OleDbConnection("Provider = Microsoft.ACE.OLEDB.12.0; Data Source = C:/Inetpub/oia_data_vd/FacultyProfile/Database/FacultyProfile.accdb");
                    con.Open();
                    string stor_id = researchTable.DataKeys[e.RowIndex].Values[0].ToString();
                    if (stor_id.Length != 0)
                    {
                        OleDbCommand cmd = new OleDbCommand("delete from ResearchExpertise where id=" + stor_id, con);
                        int result = cmd.ExecuteNonQuery();
                        con.Close();
                    }

                    dt.Rows.Remove(dt.Rows[rowIndex]);

                    ViewState["researchExpertiseTable"] = dt;
                    researchTable.DataSource = dt;
                    researchTable.DataBind();

                    SetPreviousResearchExpertiseData();
                    LoadResearchexpertiseToGrid();
                }
            }
        }
        protected void DeleteRelevantCourse_Click(object sender, GridViewDeleteEventArgs e)
        {


            if (ViewState["relevantCourseTable"] != null)
            {
                DataTable dt = (DataTable)ViewState["relevantCourseTable"];

                int rowIndex = Convert.ToInt32(e.RowIndex);
                if (dt.Rows.Count >= 1)
                {
                    OleDbConnection con = new OleDbConnection("Provider = Microsoft.ACE.OLEDB.12.0; Data Source = C:/Inetpub/oia_data_vd/FacultyProfile/Database/FacultyProfile.accdb");
                    con.Open();
                    string stor_id = relevantcourse.DataKeys[e.RowIndex].Values[0].ToString();
                    if (stor_id.Length != 0)
                    {
                        OleDbCommand cmd = new OleDbCommand("delete from RelevantCourses where id=" + stor_id, con);
                        int result = cmd.ExecuteNonQuery();
                        con.Close();
                    }
                    dt.Rows.Remove(dt.Rows[rowIndex]);

                    ViewState["relevantCourseTable"] = dt;
                    relevantcourse.DataSource = dt;
                    relevantcourse.DataBind();

                    SetPreviousRelevantCourseData();
                    LoadRelevantCourseToGrid();
                }
            }

        }

        protected void DeleteAwardsHonors_Click(object sender, GridViewDeleteEventArgs e)
        {

            if (ViewState["awardsHonorsTable"] != null)
            {
                DataTable dt = (DataTable)ViewState["awardsHonorsTable"];

                int rowIndex = Convert.ToInt32(e.RowIndex);
                if (dt.Rows.Count >= 1)
                {
                    OleDbConnection con = new OleDbConnection("Provider = Microsoft.ACE.OLEDB.12.0; Data Source = C:/Inetpub/oia_data_vd/FacultyProfile/Database/FacultyProfile.accdb");
                    con.Open();
                    string stor_id = awardsHonors.DataKeys[e.RowIndex].Values[0].ToString();
                    if (stor_id.Length != 0)
                    {
                        OleDbCommand cmd = new OleDbCommand("delete from AwardHonors where id=" + stor_id, con);
                        int result = cmd.ExecuteNonQuery();
                        con.Close();
                    }
                    dt.Rows.Remove(dt.Rows[rowIndex]);

                    ViewState["awardsHonorsTable"] = dt;
                    awardsHonors.DataSource = dt;
                    awardsHonors.DataBind();

                    SetPreviousHonorsAwardsData();
                    LoadAwardHonorsToGrid();
                }
            }
        }

        protected void DeleteResearchProjects_Click(object sender, GridViewDeleteEventArgs e)
        {

            if (ViewState["ProjectsTable"] != null)
            {
                DataTable dt = (DataTable)ViewState["ProjectsTable"];
                int rowIndex = Convert.ToInt32(e.RowIndex);
                if (dt.Rows.Count >= 1)
                {
                    OleDbConnection con = new OleDbConnection("Provider = Microsoft.ACE.OLEDB.12.0; Data Source = C:/Inetpub/oia_data_vd/FacultyProfile/Database/FacultyProfile.accdb");
                    con.Open();
                    string stor_id = researchProject.DataKeys[e.RowIndex].Values[0].ToString();
                    if (stor_id.Length != 0)
                    {
                        OleDbCommand cmd = new OleDbCommand("delete from ResearchProjects where id=" + stor_id, con);
                        int result = cmd.ExecuteNonQuery();
                        con.Close();
                    }
                    dt.Rows.Remove(dt.Rows[rowIndex]);

                    ViewState["ProjectsTable"] = dt;
                    researchProject.DataSource = dt;
                    researchProject.DataBind();
                    SetPreviousProjectsData();
                    LoadResearchProjectsToGrid();
                }
            }
        }

        protected void DeleteSponsoredProjects_Click(object sender, GridViewDeleteEventArgs e)
        {
            if (ViewState["sponsoredProjectsTable"] != null)
            {
                DataTable dt = (DataTable)ViewState["sponsoredProjectsTable"];

                int rowIndex = Convert.ToInt32(e.RowIndex);
                if (dt.Rows.Count >= 1)
                {
                    OleDbConnection con = new OleDbConnection("Provider = Microsoft.ACE.OLEDB.12.0; Data Source = C:/Inetpub/oia_data_vd/FacultyProfile/Database/FacultyProfile.accdb");
                    con.Open();
                    string stor_id = sponsoredProjectsGrid.DataKeys[e.RowIndex].Values[0].ToString();
                    if (stor_id.Length != 0)
                    {
                        OleDbCommand cmd = new OleDbCommand("delete from SponsoredProjects where id=" + stor_id, con);
                        int result = cmd.ExecuteNonQuery();
                        con.Close();
                    }

                    dt.Rows.Remove(dt.Rows[rowIndex]);

                    ViewState["sponsoredProjectsTable"] = dt;
                    sponsoredProjectsGrid.DataSource = dt;
                    sponsoredProjectsGrid.DataBind();
                    SetPreviousSponsoredProjectsData();
                    LoadSponsoredProjectsToGrid();
                }
            }
        }



        protected void researchTable_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        public void logout(object sender, EventArgs e)
        {
            Session["aid"] = null;
            Session.Abandon();
            Response.AppendHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
            Response.AppendHeader("Pragma", "no-cache"); // HTTP 1.0.
            Response.AppendHeader("Expires", "0");
            Response.Redirect("http://ipaweb.gsu.edu/search/FacultyProfile/Website/OnlineFacultyForm/OnlineFacultyForm/FacultyLogin.aspx");
        }
    }

}