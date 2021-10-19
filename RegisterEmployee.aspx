
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterEmployee.aspx.cs" Inherits="WebEmpReg.RegisterEmployee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title></title>
   
   
    <style >
        
        .auto-style1 {
            height: 505px;
        }
        .required:after{
            content:"*";
            color:red;
        }
        
        .auto-style2 {
            height: 26px;
        }
        
        </style>
   
   
</head>
<body class="auto-style2" style="background-color:ghostwhite; height: 873px;"> 
    
    
             <div class="auto-style3" style="background-color:#7376bd;">
        <h3 style="color:white; height:60px; " class="auto-style5">Employee Registration</h3>
    </div>
    

    <center>
    <form id="form1" runat="server">
        <div class="auto-style1">

            <asp:HiddenField ID="hfContactID" runat="server" />
       <table class="auto-style10">
        <tr>
            <td> <asp:Label ID="Label2" runat="server" class="required" Text="EmployeeName :"> </asp:Label></td>
            <td colspan="2"><asp:TextBox ID="EmployeeName" runat="server"></asp:TextBox></td>
           
            <td class="auto-style9">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="EmployeeName" ErrorMessage="Enter Valid Name" ForeColor="Red" SetFocusOnError="True"   ValidationGroup="emp" ValidationExpression="^[a-zA-Z]*$" Display="Dynamic"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="EmployeeName" Display="Dynamic" ErrorMessage="Please Enter Employee Name" ForeColor="Red" ValidationGroup="emp"></asp:RequiredFieldValidator>
            </td>
          
        </tr>
         <tr>
            <td class="auto-style2"><asp:Label ID="Label1" runat="server" Text="Designation :" ></asp:Label>  </td>
        <!--    <td colspan="2" class="auto-style2"><asp:TextBox ID="Designation" runat="server"></asp:TextBox></td> -->
             

            <td>   <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataTextField="" DataValueField="" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" CausesValidation="True" OnDataBinding="Button1_Click1" Width="150px" ValidationGroup="drop">
                     <asp:ListItem Text="CEO"></asp:ListItem>
                     <asp:ListItem Text="PROJECT LEAD"></asp:ListItem>
                     <asp:ListItem Text="TEAM LEAD"></asp:ListItem>
                     <asp:ListItem Text="HR"></asp:ListItem>
                 </asp:DropDownList>

             </td> 

            
         
            
        </tr>
         <tr>
            <td class="auto-style7"> <asp:Label ID="Label3" runat="server"  class="required" Text="Salary :" ></asp:Label></td>
            <td colspan="2" class="auto-style7"><asp:TextBox ID="Salary" runat="server" ValidationGroup="emp"></asp:TextBox></td>
             <td class="auto-style8">
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Salary" Display="Dynamic" ErrorMessage="Please Enter Salary" ForeColor="Red" ValidationGroup="emp"></asp:RequiredFieldValidator>
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="Salary" Display="Dynamic" ErrorMessage="incrrect" SetFocusOnError="True" ValidationExpression="^[0-9]{4,10}$" ForeColor="Red">Incorrect</asp:RegularExpressionValidator>
               
             </td>
            
        </tr>
         <tr>
            <td><asp:Label ID="Label4" runat="server"  class="required" Text="Email :" ></asp:Label></td>
            <td colspan="2"><asp:TextBox ID="Email" runat="server" ValidationGroup="emp"></asp:TextBox></td>
             <td class="auto-style9">
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Email" Display="Dynamic" ErrorMessage="RegularExpressionValidator" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Invalid Email Id</asp:RegularExpressionValidator>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Email" ErrorMessage="Please Enter  Email ID" ForeColor="Red" ValidationGroup="emp"></asp:RequiredFieldValidator>
             </td>
              
        </tr>
         <tr>
            <td><asp:Label ID="Label5" runat="server"  class="required" Text="Mobile :" ></asp:Label></td>
            <td colspan="2"><asp:TextBox ID="Mobile" runat="server" ValidationGroup="emp"></asp:TextBox></td>
             <td class="auto-style9">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="Mobile" Display="Dynamic" ErrorMessage="incorrect" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^[7-9][0-9]{9}$">Incorrect </asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="Mobile" Display="Dynamic" ErrorMessage="Please Enter Mobile No" ForeColor="Red" ValidationGroup="emp"></asp:RequiredFieldValidator>
                    </td>
            
        </tr>
         <tr>
            <td><asp:Label ID="Label6" runat="server" Text="Qualification :" ></asp:Label></td>
       <td colspan="2"><asp:TextBox ID="Qualification" runat="server"></asp:TextBox></td> 
             <td class="auto-style9">
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="Qualification" Display="Dynamic" ErrorMessage="incorrect" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^[\sa-zA-Z0-9,@&amp;()-+]*$"></asp:RegularExpressionValidator>
             </td>  
          <!--   <td>
                 <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" ValidationGroup="drop" Width="150px">
                     <asp:ListItem>MBA</asp:ListItem>
                     <asp:ListItem>HR</asp:ListItem>
                     <asp:ListItem>IT</asp:ListItem>
                     <asp:ListItem>Finance</asp:ListItem>
                 </asp:DropDownList>
             </td> --->
       
        </tr>
         <tr>
            <td><asp:Label ID="Label7" runat="server" Text="Manager :" ></asp:Label></td>
            <td colspan="2"><asp:TextBox ID="Manager" runat="server"></asp:TextBox></td>
             <td class="auto-style9">
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="Manager" ErrorMessage="incorrect" ForeColor="Red" ValidationExpression="^[a-zA-Z]*$">Incorrect</asp:RegularExpressionValidator>
             </td>
        </tr>

         <tr>
            
            <td colspan="2" align="center" class="auto-style4">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnSave" runat="server" Text="Update"  OnClick="Button1_Click1" ValidationGroup="emp" CssClass="auto-style2" Width="61px" />
                 <asp:Button ID="btnReset" runat="server" Text="Reset"  OnClick="Button1_Click2" Width="45px" /> 
              
              
                 
           </td>
        </tr> 
        

       </table>


             <div class="auto-style3" style="background-color:#7376bd;">
        <h3 style="color:white; height:40px; " class="auto-style6">Register Employee</h3>
    </div>
          

            <br />
               
            <asp:GridView ID="GridViewData" AutoGenerateColumns="false" runat="server" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None" Width="245px" Height="62px">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" />
                    <asp:BoundField DataField="EmployeeName" HeaderText="EmployeeName" />
                     <asp:BoundField DataField="Designation" HeaderText="Designation" />
                     <asp:BoundField DataField="Salary" HeaderText="Salary" />
                     <asp:BoundField DataField="Email" HeaderText="Email" />
                     <asp:BoundField DataField="Mobile" HeaderText="Mobile" />
                     <asp:BoundField DataField="Qualification" HeaderText="Qualification" />
                     <asp:BoundField DataField="Manager" HeaderText="Manager" />
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton ID="InkView" runat="server" CommandArgument='<%#Eval("Id")%>' OnClick="Button2_Click2">Edit</asp:LinkButton>
                         </ItemTemplate>
                        </asp:TemplateField>
                      <asp:TemplateField>
                        <ItemTemplate>
                              <asp:LinkButton ID="InkView2"   runat="server" OnClick="InkView2_Click">Delete</asp:LinkButton>
                         </ItemTemplate>
                      </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#594B9C" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#33276A" />
               
            </asp:GridView>
              
          

           
        </div>
    </form>
        </center>
</body>
</html>
