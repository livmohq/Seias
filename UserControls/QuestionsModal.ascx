<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="QuestionsModal.ascx.cs" Inherits="SIAS.UserControls.QuestionsModal" %>

<div class="modal fade" id="QuestionsModals" tabindex="-1" role="dialog" aria-labelledby="myQuestionsModalLabel">
    <div class="modal-dialog modal-lg" role="document" style="width: 90%;">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myQuestionsModalLabel">Questions  
[<label style="color: red;" id="Questions_Id">0</label>]    
                    <label style="color: red;" id="QuestionsStatusUpdateMessgae" />
                </h4>
            </div>
            <div class="modal-body">
                <div class="row">
                    <label class="control-label col-md-2 col-sm-2 col-xs-12" for="first-name">Assessment: </label>
                    <div class="col-md-2 col-sm-2 col-xs-12">
                        <div id="Questions_AssignmentDiv" >
                        </div>
                    </div>
                </div>
                <div class="row">
                    <label class="control-label col-md-2 col-sm-2 col-xs-12" for="first-name">Qustionnaire: </label>
                    <div class="col-md-2 col-sm-2 col-xs-12">
                        <div id="Questions_QustionnaireDiv" >
                            </div>
                    </div>
                </div>
                <div class="row">
                    <label class="control-label col-md-2 col-sm-2 col-xs-12" for="first-name">Subsection: </label>
                    <div class="col-md-2 col-sm-2 col-xs-12">
                        <div id="Questions_SubsectionDiv" >
                            </div>
                    </div>
                </div>


                <div class="row">
                    <label class="control-label col-md-2 col-sm-2 col-xs-12" for="first-name">TypeId: </label>
                    <div class="col-md-2 col-sm-2 col-xs-12">
                        <input type="text" class="form-control" placeholder="Enter TypeId" id="Questions_TypeId" />
                    </div>
                </div>
                
                <div class="row">
                    <label class="control-label col-md-2 col-sm-2 col-xs-12" for="first-name">Description: </label>
                    <div class="col-md-10 col-sm-10 col-xs-12">
                        <input type="text" class="form-control" placeholder="Enter Description" id="Questions_Description" />
                    </div>


                </div>
                <div class="row">
                    <label class="control-label col-md-2 col-sm-2 col-xs-12" for="first-name">Order: </label>
                    <div class="col-md-1 col-sm-1 col-xs-12">
                        <div id="Questions_OrderDiv" ></div>
                    </div>


                </div>
                <script type="text/javascript"></script>
                <div class="ln_solid"></div>
                <div class="row">
                    <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                        <label data-dismiss="modal" aria-label="Close" class="btn btn-primary">Cancel</label>
                        <label onclick="SaveQuestions()" type="submit" class="btn btn-success">Submit</label>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script> 
    $(document).ready(function () {
        GetActiveAssignmentDiv('Questions');
        GetDisplayOrder('Questions_OrderDiv');
    });
        

</script>