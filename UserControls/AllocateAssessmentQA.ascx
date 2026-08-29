<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="AllocateAssessmentQA.ascx.cs" Inherits="SIAS.UserControls.AllocateAssessmentQA" %>

<div class="modal fade" id="AllocateAssessmentQA" tabindex="-1" role="dialog" aria-labelledby="myAllocateAssessmentQALabel">  
<div class="modal-dialog modal-lg" role="document" style="width: 90%;">  
<div class="modal-content">  

<div class="modal-body" >
    
    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>  
<h4 class="modal-title" id="myAllocateAssessmentQALabel">Allocate  
[<label style="color: red;" id="AllocateQA_Id">0</label>]    
<label style="color: red;" id="AllocateAssessmentMessgae" />  
    </h4> 
<div class="row">
<p> Please Select Assessor for the selected  Assessment </p>
</div>
<div class="row">
    <label class="control-label col-md-2 col-sm-2 col-xs-12" for="first-name">Name: </label>   
  <div class="col-md-4 col-sm-4 col-xs-12">
                      <div id="AllocateQA_AssessorDiv">Lookup</div>
  </div> 
</div>
<script type="text/javascript"></script>  
  <div class="ln_solid"></div>    
   <div class="row">  
    <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">  
       <label  data-dismiss="modal" aria-label="Close"  class="btn btn-primary">Cancel</label>  
     <label  onclick="AllocateQA()" id="btnsumbitQA" class ="btn btn-success">Submit</label>  
 </div>  
 </div>   
</div>  
</div></div></div>  
<script> 
    $(document).ready(function () {

        GetAllAssessor('AllocateQA_AssessorDiv');
    });

    function AllocateQA()
    {

        document.getElementById('btnsumbitQA').onclick = function () {
            var selected = [];
            for (var option of document.getElementById('AllocateQA_AssessorId').options) {
                if (option.selected) {
                 //   selected.push(option.value);
                    SaveAllocationQA(document.getElementById('AllocateQA_Id').innerHTML, option.value)
                }
            }
            //alert(selected);
        }
       
       // SaveAllocation(document.getElementById('Allocate_Id').innerHTML, document.getElementById('Allocate_AssessorId').value)


      
    }

</script>
