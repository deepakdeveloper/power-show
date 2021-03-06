﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Grid/Grid.master" AutoEventWireup="true" CodeFile="cs_master_detail_superform_window.aspx.cs" Inherits="Grid_cs_master_detail_superform_window" %>
<%@ Register TagPrefix="obout" Namespace="Obout.Grid" Assembly="obout_Grid_NET" %>
<%@ Register TagPrefix="obout" Namespace="Obout.SuperForm" Assembly="obout_SuperForm" %>
<%@ Register TagPrefix="owd" Namespace="OboutInc.Window" Assembly="obout_Window_NET" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">				
		<br />
		<span class="tdText"><b>ASP.NET Grid - Master / Detail - Add/Edit using SuperForm inside Window</b></span>		
		
		<br /><br />

        <span id="WindowPositionHelper"></span>
		
        <asp:PlaceHolder ID="phGrid1" runat="server"></asp:PlaceHolder>	

        <owd:Window ID="Window1" runat="server" IsModal="true" ShowCloseButton="true" Status=""
            RelativeElementID="WindowPositionHelper" Top="-25" Left="100" Height="195" Width="345" VisibleOnLoad="false" StyleFolder="../window/wdstyles/blue"
            Title="Add / Edit Record">
                <input type="hidden" id="CustomerID" />

                <div class="super-form">
                    <obout:SuperForm ID="SuperForm1" runat="server"
                        AutoGenerateRows="false"
                        AutoGenerateInsertButton ="false"
                        AutoGenerateEditButton="false"
                        AutoGenerateDeleteButton="false"                        
                        DataKeyNames="CustomerID" DefaultMode="Insert" Width="325">
                        <Fields>
                            <obout:BoundField DataField="CompanyName" HeaderText="Company Name" />
                            <obout:BoundField DataField="ContactName" HeaderText="Contact Name" />
                            <obout:BoundField DataField="Country" HeaderText="Country" />
                            
                            <obout:TemplateField>
                                <EditItemTemplate>
                                    <obout:OboutButton ID="OboutButton1" runat="server" Text="Save" OnClientClick="saveMasterChanges(); return false;" Width="75" />
                                    <obout:OboutButton ID="OboutButton2" runat="server" Text="Cancel" OnClientClick="cancelMasterChanges(); return false;" Width="75" />
                                </EditItemTemplate>
                            </obout:TemplateField>
                        </Fields>
                    </obout:SuperForm>
                </div>
        </owd:Window>

        <owd:Window ID="Window2" runat="server" IsModal="true" ShowCloseButton="true" Status=""
            RelativeElementID="WindowPositionHelper" Top="-25" Left="100" Height="195" Width="345" VisibleOnLoad="false" StyleFolder="../window/wdstyles/blue"
            Title="Add / Edit Record">
                <input type="hidden" id="OrderID" />

                <div class="super-form">
                    <obout:SuperForm ID="SuperForm2" runat="server"
                        AutoGenerateRows="false"
                        AutoGenerateInsertButton ="false"
                        AutoGenerateEditButton="false"
                        AutoGenerateDeleteButton="false"                        
                        DataKeyNames="OrderID" DefaultMode="Insert" Width="325">
                        <Fields>
                            <obout:BoundField DataField="ShipName" HeaderText="Ship Name" />
                            <obout:BoundField DataField="ShipCity" HeaderText="Ship City" />
                            <obout:BoundField DataField="ShipCountry" HeaderText="Ship Country" />
                            
                            <obout:TemplateField>
                                <EditItemTemplate>
                                    <obout:OboutButton ID="OboutButton3" runat="server" Text="Save" OnClientClick="saveDetailChanges(); return false;" Width="75" />
                                    <obout:OboutButton ID="OboutButton4" runat="server" Text="Cancel" OnClientClick="cancelDetailChanges(); return false;" Width="75" />
                                </EditItemTemplate>
                            </obout:TemplateField>
                        </Fields>
                    </obout:SuperForm>
                </div>
        </owd:Window>
		
		<br /><br />				
		
		<span class="tdText">
		    The Super Form control can be placed inside a Window control and be used for adding/editing the records of a Grid.<br />
            This approach will increase the usability of the site, because you can display much more fields in the Super Form in Window<br />
            than you can display in a Grid row.<br /><br />
            This sample shows how to use the SuperForm inside a Window to add/edit records from master/detail grids.
		</span>
				
		<asp:SqlDataSource runat="server" ID="sds1" ProviderName="System.Data.OleDb"
		    ConnectionString="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|Northwind.mdb;"
		    SelectCommand="SELECT * FROM [Customers]"
            InsertCommand="INSERT INTO Customers (CustomerID, CompanyName, ContactName, Country) VALUES(@CustomerID, @CompanyName, @ContactName, @Country)"
            UpdateCommand="UPDATE Customers SET CompanyName = @CompanyName, ContactName = @ContactName, Country=@Country WHERE CustomerID = @CustomerID"
            DeleteCommand="DELETE FROM Customers WHERE CustomerID = @CustomerID">
            <InsertParameters>
                <asp:Parameter Name="CustomerID" Type="String" />
                <asp:Parameter Name="CompanyName" Type="String" />
                <asp:Parameter Name="ContactName" Type="String" />
                <asp:Parameter Name="Country" Type="String" />                
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="CompanyName" Type="String" />
                <asp:Parameter Name="ContactName" Type="String" />
                <asp:Parameter Name="Country" Type="String" />
                <asp:Parameter Name="CustomerID" Type="String" />
            </UpdateParameters>
            <DeleteParameters>
                <asp:Parameter Name="CustomerID" Type="String" />
            </DeleteParameters>
		 </asp:SqlDataSource>

		 
		<asp:SqlDataSource runat="server" ID="sds2" ProviderName="System.Data.OleDb"
            ConnectionString="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|Northwind.mdb;"
            SelectCommand="SELECT * FROM [Orders] WHERE CustomerID = @CustomerID"
            InsertCommand="INSERT INTO Orders (CustomerID, ShipName, ShipCity, ShipCountry) VALUES(@CustomerID, @ShipName, @ShipCity, @ShipCountry)"
            UpdateCommand="UPDATE Orders SET ShipName = @ShipName, ShipCity = @ShipCity, ShipCountry=@ShipCountry WHERE OrderID = @OrderID"
            DeleteCommand="DELETE FROM Orders WHERE OrderID = @OrderID">
		    <SelectParameters>
                <asp:Parameter Name="CustomerID" Type="String" />
            </SelectParameters>
            <InsertParameters>
                <asp:Parameter Name="CustomerID" Type="String" />
                <asp:Parameter Name="ShipName" Type="String" />
                <asp:Parameter Name="ShipCity" Type="String" />
                <asp:Parameter Name="ShipCountry" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ShipName" Type="String" />
                <asp:Parameter Name="ShipCity" Type="String" />
                <asp:Parameter Name="ShipCountry" Type="String" />
                <asp:Parameter Name="OrderID" Type="Int32" />
            </UpdateParameters>
            <DeleteParameters>
                <asp:Parameter Name="OrderID" Type="Int32" />
            </DeleteParameters>
		</asp:SqlDataSource>

</asp:Content>
    	
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .super-form {
            margin: 9px;
        }        
    </style>
    <script type="text/javascript">
        var isinAddMode = false;
        var detailInAddEditMode = false;

        function Grid1_ClientEdit(sender, record) {
            isinAddMode = false;

            Window1.Open();

            document.getElementById('CustomerID').value = record.CustomerID;
            SuperForm1_CompanyName.value(record.CompanyName);
            SuperForm1_ContactName.value(record.ContactName);
            SuperForm1_Country.value(record.Country);

            return false;
        }

        function Grid1_ClientAdd(sender, record) {
            isinAddMode = true;

            Window1.Open();

            document.getElementById('CustomerID').value = "CUST" + Math.floor(Math.random() * 100);
            SuperForm1_CompanyName.value('');
            SuperForm1_ContactName.value('');
            SuperForm1_Country.value('');

            return false;
        }

        function saveMasterChanges() {
            Window1.Close();

            var customerID = document.getElementById('CustomerID').value;

            var data = new Object();
            data.CustomerID = customerID;
            data.CompanyName = SuperForm1_CompanyName.value();
            data.ContactName = SuperForm1_ContactName.value();
            data.Country = SuperForm1_Country.value();

            if (!isinAddMode) {
                Grid1.executeUpdate(data);
            } else {
                Grid1.executeInsert(data);
            }
        }

        function cancelMasterChanges() {
            Window1.Close();
        }



        function Grid2_ClientEdit(sender, record) {
            isinAddMode = false;
            detailInAddEditMode = sender;

            Window2.Open();

            document.getElementById('OrderID').value = record.OrderID;
            SuperForm2_ShipName.value(record.ShipName);
            SuperForm2_ShipCity.value(record.ShipCity);
            SuperForm2_ShipCountry.value(record.ShipCountry);

            return false;
        }

        function Grid2_ClientAdd(sender, record) {
            isinAddMode = true;
            detailInAddEditMode = sender;

            Window2.Open();

            document.getElementById('OrderID').value = 0;
            SuperForm2_ShipName.value('');
            SuperForm2_ShipCity.value('');
            SuperForm2_ShipCountry.value('');

            return false;
        }

        function saveDetailChanges() {
            Window2.Close();

            var orderID = document.getElementById('OrderID').value;

            var data = new Object();
            data.ShipName = SuperForm2_ShipName.value();
            data.ShipCity = SuperForm2_ShipCity.value();
            data.ShipCountry = SuperForm2_ShipCountry.value();

            if (!isinAddMode) {
                data.OrderID = orderID;
                detailInAddEditMode.executeUpdate(data);
            } else {
                data.CustomerID = detailInAddEditMode.ForeignKeys.CustomerID.Value;
                detailInAddEditMode.executeInsert(data);
            }
        }

        function cancelDetailChanges() {
            Window2.Close();
        }
	    </script>
</asp:Content>
       
		
		