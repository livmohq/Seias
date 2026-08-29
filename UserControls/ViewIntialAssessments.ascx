<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ViewIntialAssessments.ascx.cs" Inherits="SIAS.UserControls.ViewIntialAssessments" %>



<style> 

    @media print {
    .myDivToPrint {
        background-color: #fff;
        height: 100%;
        width: 100%;
        position: fixed;
        top: 0;
        left: 0;
        margin: 0;
        padding: 15px;
        font-size: 14px;
        line-height: 18px
    }

    .AddCommentLabel {
        display: none
    }

    .AddCommentDiv {
        display: none
    }

    .col-md-9, .col-sm-9, .col-xs-9 {
        width: 100%;
        padding: 0;
        margin: 0
    }

    .col-md-3, .col-sm-3, .col-xs-3 {
        display: none;
        width: 0
    }

    .x_panel {
        padding: 0;
        margin: 0;
        border: 0
    }

    .CloneLabale {
        display: none
    }

    .table > tbody > tr > th {
        padding: 1px;
        font-size: 15px;
        font-weight: 500
    }

    h1, .h1, h2, .h2, h3, .h3 {
        padding: 1px;
        margin-top: 3px;
        margin-bottom: 3px
    }

    h1, h2 {
        padding: 1px
    }

    h1 {
        font-size: 23px
    }

    .Documents, .PrintingDiv {
        display: none
    }

    .x_content {
        padding: 0
    }

    .Heading {
        padding: 2px
    }

    .x_content h4, .count {
        font-size: 16px;
        font-weight: 400
    }

    .x_content {
        margin: 0
    }

    b, strong {
        font-weight: 200;
        font-size:15px;
    }

    .container {
        max-width: 100%;
        margin: 0;
        padding: 0
    }

    .PageBreak:nth-of-type(2) {
        page-break-before: always;
        display: block;
        position: absolute
    }
}
</style>


<div class="modal fade" id="ViewIntialAssessmentsModals" tabindex="-1" role="dialog" aria-labelledby="myIntialAssessmentsModalLabel">  
<div class="modal-dialog modal-lg" role="document" style="width: 90%;">  
<div class="modal-content">  
                <div class="modal-header">
     
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <button class="btn btn-default" onclick="PrintMe('Purpose');" style="display:none;"><i class="fa fa-print"></i> Print</button>
</div>

<div class="modal-body   myDivToPrint1" >  
    <div id="Purpose" class="editor-wrapper placeholderText" contenteditable="true">
             
        
        </div>
    </div>

    </div>
  </div>
    </div>


<style>

    .CloneLabale {
         display : none ; 
    }

</style>

