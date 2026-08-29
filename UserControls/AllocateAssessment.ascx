<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="AllocateAssessment.ascx.cs" Inherits="SIAS.UserControls.AllocateAssessment" %>

<div class="modal fade" id="AllocateAssessment" tabindex="-1" role="dialog" aria-labelledby="myAllocateAssessmentLabel">  
<div class="modal-dialog modal-lg" role="document" style="width: 90%;">  
<div class="modal-content">  

<div class="modal-body" >
    
    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>  
<h4 class="modal-title" id="myAllocateAssessmentLabel">Allocate  
<span style="display: none;">[<label style="color: red;" id="Allocate_Id">0</label>] </span>   
<label style="color: red;" id="AllocateAssessmentMessgae" />  
    </h4> 
<div class="row">
<p> Please Select Assessor for the selected  Assessment</p>
</div>
<div class="row">
    <label class="control-label col-md-2 col-sm-2 col-xs-12" for="first-name">Name: </label>   
  <div class="col-md-4 col-sm-4 col-xs-12">
                      <div id="Allocate_AssessorDiv">Lookup</div>
  </div> 
</div>
<script type="text/javascript"></script>  
  <div class="ln_solid"></div>    
   <div class="row">  
    <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">  
       <label  data-dismiss="modal" aria-label="Close"  class="btn btn-primary">Cancel</label>  
     <label  onclick="Allocate()" id="btnsumbit" class ="btn btn-success">Submit</label>  
 </div>  
 </div>   
</div>  
</div></div></div>  
<script> 
    $(document).ready(function () {

        GetAllAssessor('Allocate_AssessorDiv');

        window.onmousedown = function (e) {
            var el = e.target;
            if (el.tagName.toLowerCase() == 'option' && el.parentNode.hasAttribute('multiple')) {
                e.preventDefault();

                // toggle selection
                if (el.hasAttribute('selected')) el.removeAttribute('selected');
                else el.setAttribute('selected', '');

                // hack to correct buggy behavior
                var select = el.parentNode.cloneNode(true);
                el.parentNode.parentNode.replaceChild(select, el.parentNode);
            }
        }


    });

    
    function Allocate()
    {

        document.getElementById('btnsumbit').onclick = function () {
            var selected = [];
            for (var option of document.getElementById('Allocate_AssessorId').options) {
                if (option.selected) {
                 //   selected.push(option.value);
                    SaveAllocation(document.getElementById('Allocate_Id').innerHTML, option.value)
                }
            }
            //alert(selected);
        }
       
       // SaveAllocation(document.getElementById('Allocate_Id').innerHTML, document.getElementById('Allocate_AssessorId').value)


      
    }

</script>
