<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="QustionnaireModal.ascx.cs" Inherits="SIAS.UserControls.QustionnaireModal" %>


<div class="modal fade" id="QustionnaireModals" tabindex="-1" role="dialog" aria-labelledby="myQustionnaireModalLabel">  
<div class="modal-dialog modal-lg" role="document" style="width: 90%;">  
<div class="modal-content">  
<div class="modal-header">  
<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>  
<h4 class="modal-title" id="myQustionnaireModalLabel">Qustionnaire  
[<label style="color: red;" id="Qustionnaire_Id">0</label>]    
<label style="color: red;" id="QustionnaireStatusUpdateMessgae" />  
</h4>  
</div>  
<div class="modal-body" >  
<div class="row">
    <label class="control-label col-md-2 col-sm-2 col-xs-12" for="first-name">Id: </label>   
  <div class="col-md-2 col-sm-2 col-xs-12">lable</div> 


</div>
<div class="row">
    <label class="control-label col-md-2 col-sm-2 col-xs-12" for="first-name">Name: </label>   
  <div class="col-md-4 col-sm-4 col-xs-12"><input type="text" class="form-control"    placeholder="Enter Name"     id="Qustionnaire_Name"  >




  </div> 


</div>
<script type="text/javascript"></script>  
  <div class="ln_solid"></div>    
   <div class="row">  
    <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">  
       <label  data-dismiss="modal" aria-label="Close"  class="btn btn-primary">Cancel</label>  
     <label  onclick="SaveQustionnaire()"  type="submit" class="btn btn-success">Submit</label>  
 </div>  
 </div>   
</div>  
</div></div></div>  
