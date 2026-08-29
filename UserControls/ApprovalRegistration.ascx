<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ApprovalRegistration.ascx.cs" Inherits="SIAS.UserControls.ApprovalRegistration" %>
<div class="modal fade" id="ApprovalRegistrationModels" tabindex="-1" role="dialog" aria-labelledby="myApprovalRegistration">  
<div class="modal-dialog modal-lg" role="document" style="width: 90%;">  
<div class="modal-content">  
<div class="modal-header">  
<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>  
<h4 class="modal-title" id="myApprovalRegistration">DepartmentUser  
<label style="color: red;visibility:hidden;" id="AspNetUsers_Id">""</label>  
<label style="color: red;" id="AspNetUsersStatusUpdateMessgae" />  
</h4>  
</div>  
<div class="modal-body" >  
<script type="text/javascript"></script>  


                            <div class="row">
    <label class="control-label col-md-2 col-sm-2 col-xs-12 required" for="first-name">Approval Status : </label>   
  <div class="col-md-4 col-sm-4 col-xs-12"><select id="mySelect">
    <option value="1">Please Select</option>
    <option value="200">Approve</option>
    <option value="201">Reject</option>
</select> </div> 
</div>
    
    
    <div class="ln_solid"></div>
    <div class="row">
    <label class="control-label col-md-2 col-sm-2 col-xs-12" for="first-name">Reason: </label>   
          <div class="col-md-4 col-sm-4 col-xs-12"> <textarea class="form-control" rows="5" placeholder="Enter Reason"  id="AspNetUsers_Reason" ></textarea></div> 
    </div>
    <div class="ln_solid"></div>
    

   <div class="row">  
    <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">  
       <label  data-dismiss="modal" aria-label="Close"  class="btn btn-primary">Cancel</label>  
     <label  data-dismiss="modal" onclick="SaveDepartmentUserApproval()"  class="btn btn-success">Submit</label>  
 </div>  
 </div>   
</div>  
</div>  
</div></div>  


<script  type="text/javascript"> 
    $(document).ready(function () {

 
        GetApprovalUsersDiv('Approval_USerDiv');
    
     

    })

    function GetApprovalUsersDiv(Div) {


        $.ajax({

            type: "POST",
            url: "/Services/DataCollection.asmx/GetAllAspNetApproval"
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

    function SaveDepartmentUserApproval() {
     
      
        var obj = {};
        var x = document.getElementById("mySelect").selectedIndex;
        var y = document.getElementById("mySelect").options;
        //alert(y[x].index);
        //alert("Index: " + y[x].index + " is " + y[x].text);

        obj.UserApprovalId = y[x].index;
        obj.UserId = document.getElementById('AspNetUsers_Id').innerHTML;
        //var x = document.getElementById("Approval_USerDiv").selectedIndex;
        //var y = document.getElementById("Approval_USerDiv").options;
        //alert("Index: " +x+ " is " + y);
        //obj.UserApprovalId =e.options[e.selectedIndex].outerText;
        ////var e = document.getElementById("Approval_USerDiv");
        ////var value = e.options[e.selectedIndex].value;
        ////var text = e.options[e.selectedIndex].text;
        ////alert(value);
        ////alert(text);
        obj.UserApprovalReason = document.getElementById("AspNetUsers_Reason").value;

        //var object1 = e.options[e.selectedIndex].outerText;
        //alert(object1);
        //console.log(object1);


        $.ajax({
            type: "POST",
            data: "{approvalObject:" + JSON.stringify(obj) + "}",
            url: "/Services/DataCollection.asmx/SaveUsersApprovals",
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (response) {

              
                alert("User verified !!!");

                GetAllAspNetUsers();
                $('#ApprovalRegistrationModels').modal('hide');
            }
        });

    }


  

</script>