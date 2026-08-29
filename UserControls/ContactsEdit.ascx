<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ContactsEdit.ascx.cs" Inherits="SIAS.UserControls.ContactsEdit" %>

<div class="modal fade" id="ContactsEdit" tabindex="-1" role="dialog" aria-labelledby="myContactUsersModalLabel">  
<div class="modal-dialog modal-lg" role="document" style="width: 90%;">  
<div class="modal-content">  
<div class="modal-header">  
<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>  
<h4 class="modal-title" id="myContactUsersModalLabel">ContactUser  
[<label style="color: red;" hidden="hidden" id="Contact_Id">0</label> ]    
<label style="color: red;" id="ContactStatusUpdateMessgae" />   
</h4>  
</div>  
<div class="modal-body" >  
<script type="text/javascript"></script>  

<div class="row">
    <label class="control-label col-md-2 col-sm-2 col-xs-12" for="first-name">Name: </label>   
  <div class="col-md-4 col-sm-4 col-xs-12"><input type="text" class="form-control"   enabled="true"    placeholder="Enter Name"     id="Contact_Name"  /> </div> 


</div>
<div class="row">
    <label class="control-label col-md-2 col-sm-2 col-xs-12" for="first-name">Surname: </label>   
  <div class="col-md-4 col-sm-4 col-xs-12"><input type="text" class="form-control"   enabled="true"     placeholder="Enter Surname"     id="Contact_Surname"  /> </div> 
</div>

    <div class="row">
    <label class="control-label col-md-2 col-sm-2 col-xs-12" for="first-name">Email: </label>   
  <div class="col-md-4 col-sm-4 col-xs-12"><input type="text" class="form-control"   enabled="true"  placeholder="Enter Email"     id="Contact_Email"  /> </div> 


</div>

      <div class="row">
    <label class="control-label col-md-2 col-sm-2 col-xs-12" for="first-name">Phone Number: </label>   
  <div class="col-md-4 col-sm-4 col-xs-12"><input type="text" class="form-control"   enabled="true"  placeholder="Enter Phone Number"     id="Contact_PhoneNumber"  /> </div> 


</div>

    </div>

    <div class="row">
    <label class="control-label col-md-2 col-sm-2 col-xs-12" for="first-name">Department: </label>   
  <div class="col-md-4 col-sm-4 col-xs-12"><input type="text" class="form-control"   enabled="true"  placeholder="Enter Department"     id="Contact_Department"  /> </div> 


</div>

      <div class="row">
    <label class="control-label col-md-2 col-sm-2 col-xs-12" for="first-name">Province: </label>   
  <div class="col-md-4 col-sm-4 col-xs-12"><input type="text" class="form-control"   enabled="true"  placeholder="Enter Province"     id="Contact_Province"  /> </div> 


</div>
  


    <div class="ln_solid"></div>
    

   <div class="row">  
    <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">  
       <label  data-dismiss="modal" aria-label="Close"  class="btn btn-primary">Cancel</label>  
     <label  data-dismiss="modal" onclick="SaveContactUsers()"  class="btn btn-success">Submit</label>  
 </div>  
 </div>   
</div>  
</div></div></div>  
<script  type="text/javascript"> 
    $(document).ready(function () {


    
        GetAllDepartmentDiv("AspNetUsers_DepartmentDiv");
        GetProvinceLookUp("AspNetUsers_ProvinceDiv");
    })

</script>
