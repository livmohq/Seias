<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="PrintCerticate.ascx.cs" Inherits="SIAS.UserControls.PrintCerticate" %>

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
            line-height: 18px;
        }

        .AddCommentLabel {
            display: none;
        }

        .AddCommentDiv {
            display: none;
        }

        .col-md-9, .col-sm-9, .col-xs-9 {
            width: 100%;
            padding: 0;
            margin: 0;
        }

        .col-md-3, .col-sm-3, .col-xs-3 {
            display: none;
            width: 0;
        }

        .x_panel {
            padding: 0;
            margin: 0;
            border: 0;
        }

        .CloneLabale {
            display: none;
        }

        .table > tbody > tr > th {
            padding: 1px;
            font-size: 15px;
            font-weight: 500;
        }

        h1, .h1, h2, .h2, h3, .h3 {
            padding: 1px;
            margin-top: 3px;
            margin-bottom: 3px;
        }

        h1, h2 {
            padding: 1px;
        }

        h1 {
            font-size: 23px;
        }

        .Documents, .PrintingDiv {
            display: none;
        }

        .x_content {
            padding: 0;
        }

        .Heading {
            padding: 2px;
        }

        .x_content h4, .count {
            font-size: 16px;
            font-weight: 400;
        }

        .x_content {
            margin: 0;
        }

        b, strong {
            font-weight: 200;
            font-size: 15px;
        }

        .container {
            max-width: 100%;
            margin: 0;
            padding: 0;
        }

        .PageBreak:nth-of-type(2) {
            page-break-before: always;
            display: block;
            position: absolute;
        }

        .pageMargin {
            margin-left: 20px;
        }
    }
</style>

<div class="modal fade" id="PrintCertificateModals" tabindex="-1" role="dialog" aria-labelledby="myPrintCertificateModalLabel">
    <div class="modal-dialog modal-lg" role="document" style="width: 90%;">
        <div class="modal-content">
            <div class="modal-header">

                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <%--DWEDIT--%>
                <%--<button class="btn btn-default" onclick="window.print();"><i class="fa fa-print"></i>Print</button>--%>
              <%--  <button class="btn btn-default" onclick="PrintMe('Conditionlist');"><i class="fa fa-print"></i>Print</button>--%>

                <select id="ddlCertificateType" class="btn btn-default" onchange="selectCeriticate(this.options[this.selectedIndex].value)">
                    <option value="InitailSignOff">Initial Sign Off</option>
                    <option value="FinalSignOff">Final Sign Off</option>
                    <option value="Preliminary">Preliminary</option>
                    <option value="Exemption">Exemption</option>
                    <option value="Cluster">Cluster</option>
                </select>
                <label style="color: #f3f3f3;" id="hdnNameOfBill"></label>
                <label style="color: #f3f3f3;" id="hdnIntialImpactAssessment"></label>
                <label style="color: #f3f3f3;" id="hdnTypeofAssessment"></label>
                <label style="color: #f3f3f3;" id="SubmissionNumber"></label>


            </div>
            <div class="modal-body  myDivToPrint1">
                <div id="Certificate" class="editor-wrapper placeholderText" contenteditable="true"></div> <%--DWEDIT--%>
            </div>
        </div>
    </div>
</div>
<style>
    @media print {

        @page {
            size: auto;
            margin: 0;
            padding: 5%;
        }

        .modal-body {
            height: 100%;
            width: 100%;
            padding: 15px;
        }

        .myDivToPrint1 {
            background-color: white;
            height: 100%;
            width: 100%;
            position: absolute;
            top: 0;
            left: 0;
            margin: 0;
            padding: 0px;
            font-size: 14px;
            line-height: 18px;
        }

        .modal-content {
            background-color: #ffffff;
        }

        .modal-header {
            display: none;
        }

        .TopImages {
            display: none;
        }

        .row {
            display: none;
        }

        .col-md-12 col-sm-12 col-xs-12 {
            display: none;
        }

        .x_panel {
            display: none;
        }

        .container {
            border: 0px;
        }

        footer {
            display: none;
        }

        #UserName {
            display: none;
        }

        hr {
            display: none;
        }
    }
</style>

<script>

    function printDiv(divID) {
        //Get the HTML of div
        var divElements = document.getElementById(divID).innerHTML;
        //Get the HTML of whole page
        var oldPage = document.body.innerHTML;

        //Reset the page's HTML with div's HTML only
        document.body.innerHTML =
            "<html><head><title></title></head><body>" +
            divElements + "</body>";

        //Print Page
        window.print();

        //Restore orignal HTML
        document.body.innerHTML = oldPage;


    }

    function printCeriticate(Name, Assessment, Type, submissionNumber) {
        document.getElementById("hdnNameOfBill").innerHTML = Name;
        document.getElementById("hdnIntialImpactAssessment").innerHTML = Assessment;
        document.getElementById("hdnTypeofAssessment").innerHTML = Type;
        document.getElementById("SubmissionNumber").innerHTML = '00' + submissionNumber;

        var htmlData = GetInitialHTML();
        SetCertificateContent(htmlData);
    }

    function SetCertificateContent(data) {
        if (tinyMCE.activeEditor) {
            tinyMCE.activeEditor.setContent(data);
        } else {
            tinymce.init({
                selector: '#Certificate',
                plugins: "print preview",
                menubar: false,
                toolbar: "print | preview",
                height: "400",
                init_instance_callback: function () {
                    tinyMCE.get('Certificate').setContent(data)
                },
                setup: function (ed) {
                    ed.on('PreInit', function (event) {
                        var ed = event.target, dom = ed.dom;
                        dom.setAttrib(ed.getBody(), 'contenteditable', 'false');
                    });
                }
            });
        }
    }

    function selectCeriticate(AssessmentTypeType) {
        var Name = document.getElementById("hdnNameOfBill").innerHTML;
        var Assessment = document.getElementById("hdnIntialImpactAssessment").innerHTML;
        var Type = document.getElementById("hdnTypeofAssessment").innerHTML;

        var htmlData = '';

        switch (AssessmentTypeType) {
            case 'InitailSignOff': htmlData = GetInitialHTML();
                break;
            case 'FinalSignOff': htmlData = GetFinalSignOffHTML()
                break;
            case 'Preliminary': htmlData = GetPreliminaryHTML()
                break;
            case 'Cluster': htmlData = GetClusterHTML();
                break;
            case 'Exemption': htmlData = GetExemptionHTML()
                break;
        }

        SetCertificateContent(htmlData);
    }

    function SignOff() {


        $('#lblTypeofAssessment').html('SIGN-OFF');
        $('#Conditionlist').empty();
        $('#Conditionlist').append('<li style="margin: 10px;"><p>the Department of Planning, Monitoring and Evalution (DPME) has assessed the Socio-Economic Impact Assessment (SIEAS) Report as per the Following</p>'
            + '<ul  style="padding:10px"><li><p>Initiating  Department: <b>' + document.getElementById("hdnNameOfBill").innerHTML + '</b><p></li><li><p>Name of Assesments   :<b>' + document.getElementById("hdnIntialImpactAssessment").innerHTML + '</b><p></li><li><p> Type of Assessment   :<b>' + document.getElementById("hdnTypeofAssessment").innerHTML + '</b></p></li></ul></li>');
        $('#Conditionlist').append('<li>Permission is granted to the Department to proceed with submission  of occuptional health and safety amendement Bill and the SEIAS report to Cabinet with a condition that <ol   type="a" ><li> a Final SEIAS report post the public commenting phase be submitted to Cabinet</p></li></ol></li>');
        $('#Conditionlist').append('<li>Verfied and Siggned off by :</li>');
    }

    function Cluster_Old() {

        $('#lblTypeofAssessment').html('(CLUSTER ONLY)');
        $('#Conditionlist').empty();
        $('#Conditionlist').append('<li style="margin: 10px;"><p>the Department of Planning, Monitoring and Evalution (DPME) has assessed the Socio-Economic Impact Assessment (SIEAS) Report as per the Following</p>'
            + '<ul  style="padding:10px"><li><p>Initiating  Department: <b>' + document.getElementById("hdnNameOfBill").innerHTML + '</b><p></li><li><p>Name of Assesments   :<b>' + document.getElementById("hdnIntialImpactAssessment").innerHTML + '</b><p></li><li><p> Type of Assessment   :<b>' + document.getElementById("hdnTypeofAssessment").innerHTML + '</b></p></li></ul></li>');
        $('#Conditionlist').append('<li>Permission is granted to the Department to proceed with submission  of occuptional health and safety amendement Bill and the SEIAS report to Cabinet with a condition that <ol   type="a" ><li> a Final SEIAS report post the public commenting phase be submitted to Cabinet</p></li></ol></li>');
        $('#Conditionlist').append('<li>Verfied and Siggned off by :</li>');
    }
    
    function Exemption() {

        $('#lblTypeofAssessment').html('SIGN-OFF');
        $('#Conditionlist').empty();
        $('#Conditionlist').append('<li style="margin: 10px;"><p>the Department of Planning, Monitoring and Evalution (DPME) has assessed the Socio-Economic Impact Assessment (SIEAS) Report as per the Following</p><ul>'
            + '<ul  style="padding:10px"><li><p>Initiating  Department     :<b>' + document.getElementById("hdnNameOfBill").innerHTML + '</b></li><li><p>Name of Assesments     :<b>' + document.getElementById("hdnIntialImpactAssessment").innerHTML + '</b></p></li><li><p>Type of Assessment     :<b>' + document.getElementById("hdnTypeofAssessment").innerHTML + '</b></p></li></ul></li>');
        $('#Conditionlist').append('<li><p>The initiating department has been given feedback and incorporated all inputs as contained in the final Scio-Economic Impact Assessment report</p></li>');
        $('#Conditionlist').append('<li><p>Permission is granted to the Department to proceed with submission  of occuptional health and safety amendement Bill and the SEIAS report to Cabinet with a condition that <ol   type="a" ><li> a Final SEIAS report post the public commenting phase be submitted to Cabinet</p></li></ol></li>');
        $('#Conditionlist').append('<li><p>Verfied and Siggned off by DPME-SEIAS:</p></li>');
    }

    function preliminary() {

        $('#lblTypeofAssessment').html('SIGN-OFF');
        $('#Conditionlist').empty();
        $('#Conditionlist').append('<li style="margin: 10px;">the Department of Planning, Monitoring and Evalution (DPME) has assessed the Socio-Economic Impact Assessment (SIEAS) Report as per the Following'
            + '<ul  style="padding:10px"><li><p>Initiating  Department     :<b>' + document.getElementById("hdnNameOfBill").innerHTML + '</b></li><li><p>Name of Assesments     :<b>' + document.getElementById("hdnIntialImpactAssessment").innerHTML + '</b></p></li><li><p>Type of Assessment     :<b>' + document.getElementById("hdnTypeofAssessment").innerHTML + '</b></p></li></ul></li>');
        $('#Conditionlist').append('<li><p>The initiating department has been given feedback and incorporated all inputs as contained in the final Scio-Economic Impact Assessment report</li>'); $('#Conditionlist').append('<li>The initiating department has been given feedback and incorporated all inputs as contained in the final Scio-Economic Impact Assessment report</p></li>');
        $('#Conditionlist').append('<li><p>Permission is granted to the Department to proceed with submission  of occuptional health and safety amendement Bill and the SEIAS report to Cabinet with a condition that <ol   type="a" ><li> a Final SEIAS report post the public commenting phase be submitted to Cabinet</li></ol></p></li>');
        $('#Conditionlist').append('<li><p>Verfied and Siggned off by DPME-SEIAS:</p></li>');
    }

    //DWEDIT
    function Initial_Old() {

        $('#lblTypeofAssessment').html('SIGN-OFF');
        $('#Conditionlist').empty();
        //DWEDIT
        $('#Conditionlist').append('<div  style="width:80%; margin-left:calc(20%);"><img src="../Images/Header_Banner_Left.png" /></div>');

        $('#Conditionlist').append('<li style="margin: 10px;">the Department of Planning, Monitoring and Evalution (DPME) has assessed the Socio-Economic Impact Assessment (SIEAS) Report as per the Following'
            + '<ul  style="padding:10px"><li><p>Initiating  Department     :<b>' + document.getElementById("hdnNameOfBill").innerHTML + '</b></p></li><li><p>Name of Assesments     :<b>' + document.getElementById("hdnIntialImpactAssessment").innerHTML + '</b><p></li><li><p>Type of Assessment     :<b>' + document.getElementById("hdnTypeofAssessment").innerHTML + '</b></p></li></ul></li>');
        $('#Conditionlist').append('<li><p>The initiating department has been given feedback and incorporated all inputs as contained in the final Scio-Economic Impact Assessment report</li>'); $('#Conditionlist').append('<li>The initiating department has been given feedback and incorporated all inputs as contained in the final Scio-Economic Impact Assessment report</p></li>');
        $('#Conditionlist').append('<li><p>Permission is granted to the Department to proceed with submission  of occuptional health and safety amendement Bill and the SEIAS report to Cabinet with a condition that <ol   type="a" ><li> a Final SEIAS report post the public commenting phase be submitted to Cabinet</p></li></ol></li>');
        $('#Conditionlist').append('<li><p>Permission is granted to proceed with submission of the Air Service Bill  and SEIAS report for futher authorisation  within  the department</p></li>');
        $('#Conditionlist').append('<li><p>Verfied and Siggned off by DPME-SEIAS:/<p></li>');

    }

    //DWEDIT
    function GetInitialHTML() {

       $('#lblTypeofAssessment').html('SIGN-OFF');
       var htmlString = '';
       htmlString += '<table style="border: 1px solid #000000; margin-bottom:0%; margin-top:0%; height: 100%;">';
       htmlString += '<tr><td style="border: none;">';

       htmlString += '<div  style="width:80%; margin-left:calc(25%); padding-top: 50px; padding-bottom: 50px;"><img src="../Images/Header_Banner_Left.png" width="50%" height:"30%" /></div>';

       htmlString += '<p style="margin-left:25px; padding-bottom: 20px;"><b><u>SOCIO-ECONOMIC IMPACT ASSESSMENT AND QUALITY ASSURANCE SIGN-OFF FORM</u></b></p>';

       htmlString += '<p style="margin-left:25px; padding-bottom: 20px;">This is to inform that:</p>';

       htmlString += '<p style="margin-left:25px; padding-bottom: 20px;">1. The Department of Planning, Monitoring and Evaluation has assessed the Socio-Economic Impact Assessment Report as per the following:</p>';

       htmlString += '<p style="margin-left:50px">* Initiating Department: ' + document.getElementById("hdnIntialImpactAssessment").innerHTML + '</p>';
       htmlString += '<p style="margin-left:50px">* Name: ' + document.getElementById("hdnNameOfBill").innerHTML + '</p>';
       htmlString += '<p style="margin-left:50px; padding-bottom: 20px;">* Type of Assessment: ' + document.getElementById("hdnTypeofAssessment").innerHTML + '</p>';

       htmlString += '<p style="margin-left:25px; margin-right:25px; padding-bottom: 20px;">2. The initiating department has been given feedback and incorporated all inputs as contained in the initial Socio-Economic Impact Assessment report</p>';

        htmlString += '<p style="margin-left:25px; margin-right:25px; padding-bottom: 20px;">3. DPME will work with the Department to conduct the Final Impact Assessment when the proposed ' + document.getElementById("hdnNameOfBill").innerHTML + ' is in advanced stage of being developed.</p>';

       htmlString += '<p style="margin-left:25px; margin-right:25px; padding-bottom: 20px;">4. Permission is granted to proceed with submission of the ' + document.getElementById("hdnNameOfBill").innerHTML + ' and the SEIAS report for further authorisations within the Department.</p>';

       htmlString += '<p style="margin-left:25px; padding-bottom: 20px;">5. Verified and Signed off by:</p>';

       htmlString += '<p style="margin-left:25px; padding-bottom: 20px;"><b>Official Stamp and Date</b></p>';

       var SubmissionNumber = document.getElementById("SubmissionNumber").innerHTML;
       var certificateNum = SubmissionNumber;
       var d = new Date();
       var n = d.toLocaleDateString();
       var stamp = '<table style="border:solid; border-width:1px; text-align:center; margin-left:35px;" width="104px">';
       stamp += '<tr><td style="border:none;" valign="top"><img src="../Images/Header_Banner_Black_White.png" width="144px" height:"55px" /></td></tr>';
       stamp += '<tr><td style="font-size:10px; border:none;"><b>SEIAS</b></td></tr>';
       stamp += '<tr><td style="font-size:6px; border:none;"><b>Socio-Economic Impact Assessment System</b></td></tr>';
       stamp += '<tr><td style="font-size:10px; border:none;"><b>No. ' + certificateNum + '</b></td></tr>';
       stamp += '<tr><td style="font-size:6px; border:none;">AUTHENTIC  AND OFFICIAL STAMP OF APPROVAL</td></tr>';
       stamp += '<tr><td style="font-size:6px; border:none;">INITIAL</td></tr>';
       stamp += '<tr><td style="font-size:6px; border:none;">Date:' + n + '</td></tr></table>';

       htmlString += '<p>' + stamp + '</p>';
       htmlString += '<p style="padding-top:30px;"></p>';

       htmlString += '</td></tr>';
       htmlString += '</table>';

       return htmlString;
    }

    //DWEDIT
    function GetExemptionHTML() {
        $('#lblTypeofAssessment').html('SIGN-OFF');
        var htmlString = '';
        htmlString += '<table style="border: 1px solid #000000; margin-bottom:0%; margin-top:0%; height: 100%;">';
        htmlString += '<tr><td style="border: none;">';

        htmlString += '<div  style="width:80%; padding-top: 50px; padding-bottom: 50px; margin-left:calc(25%);"><img src="../Images/Header_Banner_Left.png" width="50%" height:"30%" /></div>';

        htmlString += '<p style="margin-left:25px; padding-bottom: 20px;"><b><u>EXEMPTION FROM APPLICATION OF SOCIO-ECONOMIC IMPACT ASSESSMENT</u></b></p>';

        htmlString += '<p style="margin-left:25px; padding-bottom: 20px;">This is to inform that:</p>';

        htmlString += '<p style="margin-left:25px;  padding-bottom: 20px;">1. The Department of Planning, Monitoring and Evaluation (DPME) has assessed the Socio-Economic Impact Assessment (SEIAS) Report as per the following:</p>';

        htmlString += '<p style="margin-left:50px">* Initiating Department: ' + document.getElementById("hdnIntialImpactAssessment").innerHTML + '</p>';
        htmlString += '<p style="margin-left:50px">* Name: ' + document.getElementById("hdnNameOfBill").innerHTML + '</p>';

        htmlString += '<p style="margin-left:25px; margin-right:25px; padding-bottom: 20px;">2. Permission is thus granted to proceed with submission of the ' + document.getElementById("hdnNameOfBill").innerHTML + ' for further authorizations within the Department.</p>';
        htmlString += '<p style="margin-left:25px; padding-bottom: 20px;">3. Verified and Signed off by:</p>';
        htmlString += '<p style="margin-left:25px; padding-bottom: 20px;"><b>Official Stamp and Date</b></p>';

        var SubmissionNumber = document.getElementById("SubmissionNumber").innerHTML;
        var certificateNum = SubmissionNumber;
        var d = new Date();
        var n = d.toLocaleDateString();
        var stamp = '<table style="border:solid; border-width:1px; text-align:center; margin-left:35px;" width="104px">';
        stamp += '<tr><td style="border:none;" valign="top"><img src="../Images/Header_Banner_Black_White.png" width="144px" height:"55px" /></td></tr>';
        stamp += '<tr><td style="font-size:10px; border:none;"><b>SEIAS</b></td></tr>';
        stamp += '<tr><td style="font-size:6px; border:none;"><b>Socio-Economic Impact Assessment System</b></td></tr>';
        stamp += '<tr><td style="font-size:10px; border:none;"><b>No. ' + certificateNum + '</b></td></tr>';
        stamp += '<tr><td style="font-size:6px; border:none;">AUTHENTIC  AND OFFICIAL STAMP OF APPROVAL</td></tr>';
        stamp += '<tr><td style="font-size:6px; border:none;">INITIAL</td></tr>';
        stamp += '<tr><td style="font-size:6px; border:none; padding-bottom: 20px;">Date:' + n + '</td></tr></table>';

        htmlString += '<p>' + stamp + '</p><p></p>';
        htmlString += '<p></p><p></p><p></p><p></p><p style="padding-top: 35px;"></p>';

        htmlString += '</td></tr>';
        htmlString += '</table>';

        return htmlString;
    }

    //DWEDIT
    function GetPreliminaryHTML() {
        $('#lblTypeofAssessment').html('SIGN-OFF');
        var htmlString = '';
        htmlString += '<table style="border: 1px solid #000000; margin-bottom:0%; margin-top:0%; height: 100%;">';
        htmlString += '<tr><td style="border: none;">';

        htmlString += '<div  style="width:80%; margin-left:calc(25%); padding-top: 50px; padding-bottom: 50px;"><img src="../Images/Header_Banner_Left.png" width="50%" height:"30%" /></div>';

        htmlString += '<p style="margin-left:25px; padding-bottom: 20px;"><b><u>SOCIO-ECONOMIC IMPACT ASSESSMENT AND QUALITY ASSURANCE SIGN-OFF FORM</u></b></p>';

        htmlString += '<p style="margin-left:25px; padding-bottom: 20px;">This is to inform that:</p>';

        htmlString += '<p style="margin-left:25px;  padding-bottom: 20px;">1. The Department of Planning, Monitoring and Evaluation (DPME) has assessed the Socio-Economic Impact Assessment (SEIAS) Report as per the following:</p>';

        htmlString += '<p style="margin-left:50px">* Initiating Department: ' + document.getElementById("hdnIntialImpactAssessment").innerHTML + '</p>';
        htmlString += '<p style="margin-left:50px">* Name: ' + document.getElementById("hdnNameOfBill").innerHTML + '</p>';
        htmlString += '<p style="margin-left:50px; padding-bottom: 20px;">* Type of Assessment: ' + document.getElementById("hdnTypeofAssessment").innerHTML + '</p>';
        htmlString += '<p style="margin-left:25px; margin-right:25px; padding-bottom: 20px;">2. The initiating department has been given feedback and incorporated all inputs as contained in the initial Socio-Economic Impact Assessment Report</p>';
        htmlString += '<p style="margin-left:25px; margin-right:25px; padding-bottom: 20px;">3. Permission is granted to the Department to proceed with submission of the ' + document.getElementById("hdnNameOfBill").innerHTML + '  and the SEIAS report to Cabinet with a condition that:</p>';
        htmlString += '<p style="margin-left:50px; padding-bottom: 20px;">a. A final SEIAS report post the public commenting phase be submitted to Cabinet</p>';
        htmlString += '<p style="margin-left:25px; padding-bottom: 20px;">4. Verified and Signed off by:</p>';
        htmlString += '<p style="margin-left:25px"><b>Official Stamp and Date</b></p>';

        var SubmissionNumber = document.getElementById("SubmissionNumber").innerHTML;
        var certificateNum = SubmissionNumber;
        var d = new Date();
        var n = d.toLocaleDateString();
        var stamp = '<table style="border:solid; border-width:1px; text-align:center; margin-left:35px;" width="104px">';
        stamp += '<tr><td style="border:none;" valign="top"><img src="../Images/Header_Banner_Black_White.png" width="144px" height:"55px" /></td></tr>';
        stamp += '<tr><td style="font-size:10px; border:none;"><b>SEIAS</b></td></tr>';
        stamp += '<tr><td style="font-size:6px; border:none;"><b>Socio-Economic Impact Assessment System</b></td></tr>';
        stamp += '<tr><td style="font-size:10px; border:none;"><b>No. ' + certificateNum + '</b></td></tr>';
        stamp += '<tr><td style="font-size:6px; border:none;">AUTHENTIC  AND OFFICIAL STAMP OF APPROVAL</td></tr>';
        stamp += '<tr><td style="font-size:6px; border:none;">INITIAL</td></tr>';
        stamp += '<tr><td style="font-size:6px; border:none;">Date:' + n + '</td></tr></table>';

        htmlString += '<p>' + stamp + '</p>';
        htmlString += '<p style="padding-bottom: 30px;"></p><p></p>';

        htmlString += '</td></tr>';
        htmlString += '</table>';

        return htmlString;
    }
        
    //DWEDIT
    function GetFinalSignOffHTML() {

       $('#lblTypeofAssessment').html('SIGN-OFF');
       var htmlString = '';
       htmlString += '<table style="border: 1px solid #000000; margin-bottom:0%; margin-top:0%; height: 100%;">';
       htmlString += '<tr><td style="border: none;">';
        
       htmlString += '<div  style="width:80%; margin-left:calc(25%); padding-top: 50px; padding-bottom: 50px;"><img src="../Images/Header_Banner_Left.png" width="50%" height:"30%" /></div>';

       htmlString += '<p></p>';

       htmlString += '<p style="margin-left:25px; padding-bottom: 20px;"><b><u>SOCIO-ECONOMIC IMPACT ASSESSMENT AND QUALITY ASSURANCE SIGN-OFF FORM</u></b></p>';

       htmlString += '<p style="margin-left:25px; padding-bottom: 20px;">This is to inform that:</p>';

       htmlString += '<p style="margin-left:25px; padding-bottom: 20px;">1. The Department of Planning, Monitoring and Evaluation (DPME) has assessed the Socio-Economic Impact Assessment (SEIAS) Report as per the following:</p>';

       htmlString += '<p style="margin-left:50px">* Initiating Department: ' + document.getElementById("hdnIntialImpactAssessment").innerHTML + '</p>';
       htmlString += '<p style="margin-left:50px">* Name: ' + document.getElementById("hdnNameOfBill").innerHTML + '</p>';
       htmlString += '<p style="margin-left:50px; padding-bottom: 20px;">* Type of Assessment: ' + document.getElementById("hdnTypeofAssessment").innerHTML + '</p>';

       htmlString += '<p style="margin-left:25px; margin-right:25px; padding-bottom: 20px;">2. The initiating department has been given feedback and incorporated all inputs as contained in the initial Socio-Economic Impact Assessment Report</p>';

       htmlString += '<p style="margin-left:25px; margin-right:25px; padding-bottom: 20px;">3. Permission is granted to the Department proceed with submission of the ' + document.getElementById("hdnNameOfBill").innerHTML + ' to Cabinet.</p>';

       htmlString += '<p style="margin-left:25px; padding-bottom: 20px;">4. Verified and Signed off by DPME-SEIAS Unit:</p>';

       htmlString += '<p style="margin-left:25px; padding-bottom: 20px;"><b>Official Stamp and Date</b></p>';

        var SubmissionNumber = document.getElementById("SubmissionNumber").innerHTML;
        var certificateNum = SubmissionNumber;
        var d = new Date();
        var n = d.toLocaleDateString();
        var stamp = '<table style="border:solid; border-width:1px; text-align:center; margin-left:35px;" width="104px">';
        stamp += '<tr><td style="border:none;" valign="top"><img src="../Images/Header_Banner_Black_White.png" width="144px" height:"55px" /></td></tr>';
        stamp += '<tr><td style="font-size:10px; border:none;"><b>SEIAS</b></td></tr>';
        stamp += '<tr><td style="font-size:6px; border:none;"><b>Socio-Economic Impact Assessment System</b></td></tr>';
        stamp += '<tr><td style="font-size:10px; border:none;"><b>No. ' + certificateNum + '</b></td></tr>';
        stamp += '<tr><td style="font-size:6px; border:none;">AUTHENTIC  AND OFFICIAL STAMP OF APPROVAL</td></tr>';
        stamp += '<tr><td style="font-size:6px; border:none;">INITIAL</td></tr>';
        stamp += '<tr><td style="font-size:6px; border:none;">Date:' + n + '</td></tr></table>';

        htmlString += '<p>' + stamp + '</p>';
        htmlString += '<p style="padding-bottom: 30px;"></p><p></p>';

        htmlString += '</td></tr>';
        htmlString += '</table>';

        return htmlString;
    }
       
    //DWEDIT
    function GetClusterHTML() {
        var htmlString = '';

        $('#lblTypeofAssessment').html('SIGN-OFF');

        htmlString += '<table style="border: 1px solid #000000; margin-bottom:0%; margin-top:0%; height: 100%;">';
        htmlString += '<tr><td style="border: none;">';

        htmlString += '<div  style="padding-top:50px; width:80%; margin-left:calc(25%); padding-bottom: 50px;"><img src="../Images/Header_Banner_Left.png" width="50%" height:"30%" /></div>';

        htmlString += '<p style="margin-left:25px; padding-bottom: 20px;"><b><u>SOCIO-ECONOMIC IMPACT ASSESSMENT AND QUALITY ASSURANCE (CLUSTERS ONLY)</u></b></p>';

        htmlString += '<p style="margin-left:25px; padding-bottom: 20px;">This is to inform that:</p>';

        htmlString += '<p style="margin-left:25px; padding-bottom: 20px;">1. The Department of Planning, Monitoring and Evaluation (DPME) has assessed the Socio-Economic Impact Assessment (SEIAS) Report as per the following:</p>';

        htmlString += '<p style="margin-left:50px">* Initiating Department: ' + document.getElementById("hdnIntialImpactAssessment").innerHTML + '</p>';
        htmlString += '<p style="margin-left:50px">* Name: ' + document.getElementById("hdnNameOfBill").innerHTML + '</p>';
        htmlString += '<p style="margin-left:50px; padding-bottom: 20px;">* Type of Assessment: ' + document.getElementById("hdnTypeofAssessment").innerHTML + '</p>';

        htmlString += '<p style="margin-left:25px; margin-right:25px; padding-bottom: 20px;">2. DPME will issue a Preliminary Final Sign Off Form once Clusters\'s Recommendations are addressed and Cabinet Submission is finalised.</p>';

        htmlString += '<p style="margin-left:25px; padding-bottom: 20px;">3. Verified and Signed off by DPME-SEIAS Unit:</p>';

        htmlString += '<p style="margin-left:25px; padding-bottom: 20px;"><b>Official Stamp and Date</b></p>';

        var SubmissionNumber = document.getElementById("SubmissionNumber").innerHTML;
        var certificateNum = SubmissionNumber;
        var d = new Date();
        var n = d.toLocaleDateString();

        var stamp = '<table style="border:solid; border-width:1px; text-align:center; margin-left:35px;" width="104px">';
        stamp += '<tr><td style="border:none;" valign="top"><img src="../Images/Header_Banner_Black_White.png" width="144px" height:"55px" /></td></tr>';
        stamp += '<tr><td style="font-size:10px; border:none;"><b>SEIAS</b></td></tr>';
        stamp += '<tr><td style="font-size:6px; border:none;"><b>Socio-Economic Impact Assessment System</b></td></tr>';
        stamp += '<tr><td style="font-size:10px; border:none;"><b>No. ' + certificateNum + '</b></td></tr>';
        stamp += '<tr><td style="font-size:6px; border:none;">AUTHENTIC  AND OFFICIAL STAMP OF APPROVAL</td></tr>';
        stamp += '<tr><td style="font-size:6px; border:none;">INITIAL</td></tr>';
        stamp += '<tr><td style="font-size:6px; border:none;">Date:' + n + '</td></tr></table>';

        htmlString += '<p>' + stamp + '</p>';
        htmlString += '<p></p><p></p><p></p><p style="padding-bottom: 30px;"></p><p></p>';

        htmlString += '</td></tr>';
        htmlString += '</table>';

        return htmlString;
    }

  
</script>



