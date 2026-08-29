<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SurveyQuestionsModal.ascx.cs" Inherits="SIAS.UserControls.SurveyQuestionsModal" %>


<div class="modal fade" id="SurveyQuestionsModal" tabindex="-1" role="dialog" aria-labelledby="mySurveyQuestionsModalLabel">
   <div class="modal-dialog modal-lg" role="document" style="width: 90%;">
        <div class="modal-content">
            <div class="modal-header">
                <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            <h4 id="mySurveyQuestionsModalLabel" class="modal-title">SurveyQuestions
                 <%--   [<label id="SurveyQuestions_Id" style="color: red;">0</label>]--%>
                    <label id="SurveysStatusUpdateMessage" style="color: red;">
                    </label>
                </h4>
            </div>
            <div class="modal-body">
                <%--<div class="row">
                    <label class="control-label col-md-2 col-sm-2 col-xs-12" for="first-name">
                    SurveyId:
                    </label>                                 
                          <div class="col-md-2 col-sm-2 col-xs-12">
                        <input type="text" class="form-control" id="SurveyQuestions_SurveyId" />
                    </div>                    
                </div>--%>

                  <div class="row">
                    <label class="control-label col-md-2 col-sm-2 col-xs-12" for="first-name">
                    Survey  Id:
                    </label>
                    <div class="col-md-4 col-sm-4 col-xs-12">
                        <div id="SurveyQuestions_SurveyId">
                        </div>

                    </div>
                </div>
                <div class="row">
                    <label class="control-label col-md-2 col-sm-2 col-xs-12" for="first-name">
                    Question:
                    </label>
                    <div class="col-md-2 col-md-2 col-xs-12">
                       <input type="text" class="form-control"  id="SurveyQuestions_Question" />
                        </div>                    
                </div>
                 <div class="row">
                    <label class="control-label col-md-2 col-sm-2 col-xs-12" for="first-name">
                    Rate:
                    </label>
                     <div class="col-md-2 col-sm-2 col-xs-12">
                      <%-- <input type="text" class="form-control"  id="SurveyQuestions_Rate" />--%>
                         <select id="SurveyQuestions_Rate">
                                 <option value="0" selected="selected">Please Select</option>
                          <option value="1">1</option>
                          <option value="2">2</option>
                          <option value="3">3</option>
                          <option value="2">4</option>
                          <option value="3">5</option>
                        </select>
                        </div>
                </div>    

                <%-- <div class="row">
                <label>  
                    Rate:   
                    </label>   
                        <input type="radio" id="SurveyQuestions_Rate" name="rate" value="1"/> 1 
                        <input type="radio" id="SurveyQuestions_Rate" name="rate" value="2"/> 2                  
                        <input type="radio" id="SurveyQuestions_Rate" name="rate" value="2"/> 3                  
                        <input type="radio" id="SurveyQuestions_Rate" name="rate" value="2"/> 4                  
                        <input type="radio" id="SurveyQuestions_Rate" name="rate" value="2"/> 5  
                     </div>--%>
                      
                <script type="text/javascript"></script>
                <div class="ln_solid">
                </div>
                <div class="row">
                    <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                        <label aria-label="Close" class="btn btn-primary" data-dismiss="modal">
                        Cancel</label>
                        <label class="btn btn-success" data-dismiss="modal" onclick="SaveSurveyQuestions()" type="submit">
                        Submit</label>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
         </div>
      </div>
<script> 
    $(document).ready(function () {
        GetSurveyDropdownDiv('SurveyQuestions_SurveyId');
    });

    function GetSurveyDropdownDiv(Div) {
        $.ajax({

            type: "POST",
            url: "/Services/DataCollection.asmx/GetSurveyDropdownlist"
            , contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (response) {
                $('#' + Div).empty();
                var Types = response.d;
                var listItems = "";
                listItems += '<select   id="' + Div.replace('Div', 'Id') + '"  class="select2_group form-control"  onclick="GetDepartmentLookUp(this.options[this.selectedIndex].value)"  tabindex="-1"  placeholder="Select Vehicle LicenseTypes"><option value="0"  selected>Please Select</option>';
                $.each(Types, function (index, Types) {
                    listItems += '<option value=' + Types.Id + '>' + Types.Name + ' </option>';
                });
                listItems += '</select>';
                $('#' + Div).append(listItems);
            },
            failure: function (msg) {
                $('#' + Div).text(msg);
            }
        });
    };
</script>
