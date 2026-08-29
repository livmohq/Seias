<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SelectAssessmentTypes.ascx.cs" Inherits="SIAS.UserControls.SelectAssessmentTypes" %>



<div class="modal fade" id="SelectAssessmentTypesModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
       
           
            </div>
            <div class="modal-body">
                 <div class="icheckbox_flat-green" style="position: relative;">
                                <input type="checkbox" class="flat" style="position: absolute; opacity: 0;">
                                <ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
                            <h3>IMPACT ASSESSMENT TEMPLATE</h3>
                    
                    <div class="row">
                                <label class="control-label col-md-2 col-sm-2 col-xs-12" for="first-name">Assessment Version: </label>
                                <div class="col-md-4 col-sm-4 col-xs-12">
                                    <select id="AssessmentVersion" class="select2_group form-control">
                                        <option value="">None</option>
                                        <option value="FIRST">First</option>
                                        <option value="REVISED">Revised</option>
                                    </select>
                                </div>
                        </div>
                       <div class="row">
                                <label class="control-label col-md-2 col-sm-2 col-xs-12" for="first-name">Assessment Type: </label>
                                <div class="col-md-4 col-sm-4 col-xs-12">
                                    <div id="Initail_AssessgnmentTypeDiv">Lookup</div>
                                </div>
                            </div>
                   <div class="row">
                                <label class="control-label col-md-2 col-sm-2 col-xs-12" for="first-name">Type of Proposal: </label>
                                <div class="col-md-4 col-sm-4 col-xs-12">
                                    <div id="Initail_SubmissionTypeDiv">Lookup</div>
                                </div>
                            </div>
                       <div class="row">
                                   <label class="control-label col-md-2 col-sm-2 col-xs-12" for="first-name">Name: </label>
                        <div class="col-md-4 col-sm-4 col-xs-12">
                                <input style=" float: left; font-size: large; font-weight: 700;" class="form-control" id="Initail_Assessment_Name" />
                            </div>
                            </div>
                    <div class="row">
                            <a id="create"  class="btn btn-success" onclick="createInitailAssessment()">Create + </a>
                        </div>
            </div>
        </div>

    </div>
</div>
<script>

    $(document).ready(function () {
        GetAllAssessgnmentTypeDiv('Initail_AssessgnmentTypeDiv');
        GeAllSubmissionTypesDiv('Initail_SubmissionTypeDiv');
    });
    function createInitailAssessment() {
       
        var Assessment = document.getElementById("Initail_Assessment_Name").value;
        var AssessgnmentType = document.getElementById("Initail_AssessgnmentTypeId").value;
        var AssessmentVersion = document.getElementById("AssessmentVersion").value;
        var SubmissionType = document.getElementById("Initail_SubmissionTypeId").value;
        GetCreateAssessgnment(Assessment, AssessgnmentType, SubmissionType, AssessmentVersion)
    }



</script>

