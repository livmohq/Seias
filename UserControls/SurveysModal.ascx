<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SurveysModal.ascx.cs" Inherits="SIAS.UserControls.SurveysModal" %>
<%--<%@ control CodeBehind="SurveysModal.ascx.cs" Inherits="SIAS.DynamicData.FieldTemplates.SurveysModal" Language="C#" %>--%>
<%--<asp:Literal runat="server" ID="Literal1" Text="<%# FieldValueString %>" />--%>
<%--<%@ control AutoEventWireup="true" CodeBehind="SurveysModal.ascx.cs" Inherits="SIAS.UserControls.SurveysModal" Language="C#" %>--%>

<div id="SurveysModals" aria-labelledby="mySurveysModalLabel" class="modal fade" role="dialog" tabindex="-1">
    <div class="modal-dialog modal-lg" role="document" style="width: 90%;">
        <div class="modal-content">
            <div class="modal-header">
                <button aria-label="Close" class="close" data-dismiss="modal" type="button">
                    <span aria-hidden="true">×</span>
                </button>
                <h4 id="mySurveysModalLabel" class="modal-title">Surveys 
             <%--       [<label id="Survey_Id" style="color: red;">0</label>]--%>
                    <label id="SurveysStatusUpdateMessage" style="color: red;">
                    </label>
                </h4>
            </div>
            <div class="modal-body">
                <div class="row">
                    <label class="control-label col-md-2 col-sm-2 col-xs-12" for="first-name">
                    Name:
                    </label>                                 
                          <div class="col-md-2 col-sm-2 col-xs-12">
                        <input type="text" class="form-control" id="Survey_Name" />
                    </div>                    
                </div>
             <%--   <div class="row">
                    <label class="control-label col-md-2 col-sm-2 col-xs-12" visible='false' for="first-name">
                    Active:
                    </label>
                    <div class="col-md-2 col-sm-2 col-xs-12">
                        <input type="text" class="form-control" id="Survey_Active" />                        
                        </div>                    
                </div>
                <div class="row">
                    <label class="control-label col-md-2 col-sm-2 col-xs-12" for="first-name">
                    IsDeleted:
                    </label>
                    <div class="col-md-2 col-sm-2 col-xs-12">
                        <input type="text" class="form-control"  visible='false'  id="Survey_IsDeleted" />                        
                        </div>                        
                    </div>
                </div>--%>
                <div class="row">
                    <label class="control-label col-md-2 col-sm-2 col-xs-12" for="first-name">
                    Assessment Name:
                    </label>
                    <div class="col-md-2 col-sm-2 col-xs-12">
                        <div id="Survey_ActiveAssessgnmentDiv">
                        </div>

                    </div>
                </div>
                <script type="text/javascript"></script>
                <div class="ln_solid">
                </div>
                <div class="row">
                    <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                        <label aria-label="Close" class="btn btn-primary" data-dismiss="modal">
                        Cancel</label>
                         <label class="btn btn-success" data-dismiss="modal" onclick="SaveSurvey()" type="submit">
                        Submit</label>
                    </div>
                </div>
            </div>
        </div>
    </div>

<script> 
    $(document).ready(function () {
        GetActiveAssessgnmentDiv('Survey');          
    });
</script>

