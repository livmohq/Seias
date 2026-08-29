<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="SIAS.Contact" %>
   <%@ Register Src="~/UserControls/ContactsEdit.ascx" TagPrefix="uc1" TagName="ContactEdit" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="col-md-12" >
        <div class="x_panel"  style="background-color:#efefef ;" >
            <div class="x_content">
                <div class="x_title"  style="background-color:#efefef;">
                    <h1>Get in touch with the SEIAS Team</h1>
                </div>
                Contact No: +27 12 300 1573
                <BR />
                <a href="mailto:seias.submissions@presidency.gov.za">seias.submissions@presidency.gov.za</a>
                <BR />
                <a href="mailto:seias.enquiries@presidency.gov.za ">seias.enquiries@presidency.gov.za </a>
                  
             <div id="ByDash" class="row" style="margin-top:0px;" >
            <div class="btn-group">

                      <%  if (Context.User.Identity.IsAuthenticated != true)
                            { %>
                            <script>
                                GetAllContacts();
                            </script>
                        <%}
                          if (Context.User.IsInRole("Administrator") == true)
                            {  %>
                            <script>
                                GetAllContactsView();
                            </script>

                        <%}

                        %>
            </div>
        </div>
           </div>
            </div>
        </div>
                  <div class="row">
        <div class="col-md-12">
            <div class="x_panel">

                <div class="x_title">
                   
                    <ul class="nav navbar-right panel_toolbox">
                        <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                            <ul class="dropdown-menu" role="menu">
                                <li><a href="#">Settings 1</a>
                                </li>
                                <li><a href="#">Settings 2</a>
                                </li>
                            </ul>
                        </li>
                        <li><a class="close-link"><i class="fa fa-close"></i></a>
                        </li>
                    </ul>
                    <div class="clearfix"></div>
                </div>

                <div class="x_content">
                    <div class="row">
                        <div class="table-responsive">
                            <table id="DisplayData" style="width: 100%" class="DisplayData table table-bordered  table-striped jambo_table bulk_action">
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
     
  

 <script type="text/javascript">

     function GetReportReport(ReportType) {
         jQuery('.btn-success').each(function () {
             jQuery(this).removeClass('btn-success');
             jQuery(this).addClass('btn-default');
         });
         $('#' + ReportType + '').append('  <i  class="fa fa-refresh fa-spin"></i>');
         $('#' + ReportType + '').removeClass('btn-default');
         $('#' + ReportType + '').addClass('btn-success');
     
         switch (ReportType) {
             case 'ContantUsers':
                 GetAllContactsView();
               
                 break;

             case 'ExternalUsers':
                 GetAllContacts();
                 break;

         }
     }

 </script>
        <uc1:ContactEdit runat="server" id="ContactsEdit" />

</asp:Content>

