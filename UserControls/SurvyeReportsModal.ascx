<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SurvyeReportsModal.ascx.cs" Inherits="SIAS.UserControls.SurvyeReportsModal" %>
<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

 <%--<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js" type="text/javascript"></script>  --%>
 <script src="https://code.jquery.com/jquery-1.11.3.min.js"></script>  
<%--   <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.3/Chart.js"></script>  --%>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.10.1/html2pdf.bundle.min.js" integrity="sha512-GsLlZN/3F2ErC5ifS5QtgpiJtWd43JWSuIgh7mbzZ8zBps+dvLusV+eNQATqgA/HdeKFVgA5v3S/cIrLF7QnIg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script>
    const labels = ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'];
    new Chart(document.getElementById("line-chart1"), {
        type: 'line',
        data: {
            labels: labels,
            datasets: [{
                data: [65, 59, 80, 81, 56, 55, 40],
                label: "K",
                borderColor: "#3e95cd",
                fill: false
            }
            ]
        },
        options: {
            title: {
                display: true,
                text: 'Survey Answers Info'
            }, responsive: true,
            scales: {
                yAxes: [{
                    ticks: {
                        beginAtZero: true
                    }
                }]
            }
        }
    });
</script>
<div id="SurvyeReportsModal" aria-labelledby="mySurvyeReportsModal" class="modal fade" role="dialog" tabindex="-1">
    <div class="modal-dialog modal-lg" role="document" style="width: 90%;">
        <div class="modal-content">
            <div class="modal-header">
                <button aria-label="Close" class="close" data-dismiss="modal" type="button">
                    <span aria-hidden="true">×</span>
                </button>
                <h4 id="mySurvyeReportsModal" class="modal-title">Survey Reports 
           <%--   [<label id="Survey_Id" visible="false" style="color: red;">0</label>]
                          <label id="SurveysStatusUpdateMessage" style="color: red;">
                    </label>--%>
                </h4>              
            </div>

             <div class="row">
                <div class="col-md-12">
                    <div class="card card-chart">
                        <div class="card-header card-header-warning">
                            <div id="straightLinesChart" class="ct-chart"></div>
                        </div>
                        <div class="card-body">
                            <h4 class="card-title">Survey report created</h4>

                            <canvas id="line-chart1" width="800" height="350"></canvas>

                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                 <%--   <label class="control-label col-md-2 col-sm-2 col-xs-12" for="first-name">
                    Survey Name:
                    </label>
                    <div class="col-md-1 col-sm-1 col-xs-12">
                        <div id="Survey_Id" onchange="SurveyReportViews()" >
                        </div>
                    </div>
                 <div id="SurveyReportContainer">
               </div>
                <div style="font-family: Corbel; font-size: small; text-align: center" class="row">
                    <div style="width: 100%; height: 100%">
                        <canvas id="Surveyreport" style="padding: 0; margin: auto; display: block;"></canvas>
                    </div>
                </div>--%>
                           
                <div class="ln_solid">
             
                </div>
                <div class="row">
                    <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                        <label aria-label="Close" class="btn btn-primary" data-dismiss="modal">
                        Cancel</label>    
                       
                    </div>
                </div>        
            </div>
        </div>
    </div>
    </div>

  
    <%--<script src="AssignmentCollection.js"></script>--%>
   <%-- <script src="https://cdn.jsdeliver.net/npm/chart.js"></script>--%>
