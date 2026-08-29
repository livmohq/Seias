<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Surveylinq.ascx.cs" Inherits="SIAS.UserControls.Surveylinq" %>
<div id="Surveylinq" aria-labelledby="mySurveylinqLabel" class="modal fade" role="dialog" tabindex="-1">
    <div class="modal-dialog modal-lg" role="document" style="width: 90%;">
        <div class="modal-content">
            <div class="modal-header">
                <button aria-label="Close" class="close" data-dismiss="modal" type="button">
                    <span aria-hidden="true">×</span>
                </button>
                <h4 id="mySurveylinqLabel" class="modal-title">Survey 
                    <label hidden id="SurveyAssessment_Id" style="color: red;">0</label>
                    <label id="SurveysStatusUpdateMessage"  style="color: red;">
                    </label>
                </h4>
            </div>
            <div class="modal-body">
                <div class="row">
                    <label class="control-label col-md-2 col-sm-2 col-xs-12" for="first-name">
                    Survey Name:
                    </label>                                 
                          <div class="col-md-2 col-md-3 col-xs-12">
                       <div id="SurveylinqDiv">
                        </div>
                    </div>                    
                </div>
                <div class="row">
                    <label class="control-label col-md-2 col-sm-2 col-xs-12" for="first-name">
                    Question:
                    </label>
                    <div class="col-md-2 col-md-3 col-xs-12">
                        <div id="SurveyQuestionsActiveAssessgnmentDiv">
                        </div>
                    </div>
                </div> 
                <%--<div class="row">
                    <label class="control-label col-md-2 col-sm-2 col-xs-12" for="first-name">
                    Rate:
                    </label>
                     <div class="col-md-2 col-sm-2 col-xs-12">
                       <input type="text" class="form-control"  id="SurveyQuestions_Rate" />
                        </div>
                </div>--%>
                 <div class="row">
                <label>  
                    Rate:    
                    </label> 
                       <p></p>
                        <input type="radio"  id="SurveyQuestions_Rate" name="rate" value="1"/> Average  
                       
                        <input type="radio" id="SurveyQuestions_Rate" name="rate" value="2"/> Good   
                  
                        <input type="radio"  id="SurveyQuestions_Rate" name="rate" value="3"/> Excellent         
                     
                        
                     </div>
                <script type="text/javascript"></script>
                <div class="ln_solid">
                </div>
                <div class="row">
                    <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                        <label aria-label="Close" class="btn btn-primary" data-dismiss="modal">
                        Cancel</label>
                        <label class="btn btn-success" onclick="SaveSurveyQuestions()" data-dismiss="modal" type="submit">
                        Submit</label>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script> 
    $(document).ready(function () {
        GetQuestionsActiveAssessgnmentDiv('Survey');

        GetSurveylinqDiv('Survey');
    });
</script>