<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UsersProcessButton.ascx.cs" Inherits="SIAS.UserControls.UsersProcessButton" %>
        <div class="x_panel PageBreak">
            <div class="row">
                <div class="col-xs-6">
                    <%   if (Context.User.IsInRole("Administrator") == true)
                        { %>
                    <button class="btn btn-primary pull-right" style="margin-right: 5px;"><i class="fa fa-download"></i>Approve</button>
                    <%}%>
                    <%   if (Context.User.IsInRole("Assessor") == true)
                        { %>
                    <div id="FirstApproved">
                        <label onclick="SubmitFirstApproved();" class="btn btn-primary pull-right" style="margin-right: 5px;"><i class="fa fa-download"></i>SEND TO QUALITY ASSURANCE</label>
                        <label onclick="SaveAssements();" class="btn btn-success pull-right"><i class="fa fa-credit-card"></i>Save Comments</label>
                    </div>
                    <%} if (Context.User.IsInRole("Quality Assurer") == true)
                            { %> 
                       <div id="SecondApproved">
                            <label onclick="SaveAssements();" class="btn btn-success pull-right"><i class="fa fa-credit-card"></i>Save Comments</label>
                            <label onclick="Decline();" class="btn btn-primary pull-right" style="margin-right: 5px;"><i class="fa fa-download"></i>Decline</label>
                            <label onclick="SubmitSecondApproved();" class="btn btn-primary pull-right" style="margin-right: 5px;"><i class="fa fa-download"></i>Approve</label>
                        </div>
                        <%}%>

                    <%if (Context.User.IsInRole("External") == true)
                        { %>
                    <div id="DepartmentSubmit">

                        <label onclick="SubmitAssessment();" class="btn btn-primary pull-right" style="margin-right: 5px;"><i class="fa fa-download"></i>Submit</label>
                        <label id="SaveAssements" onclick="SaveAssements();" class="btn btn-success pull-right"><i class="fa fa-credit-card"></i>Save</label>
                    </div>

                    <%}%>
                </div>
            </div>
        </div>