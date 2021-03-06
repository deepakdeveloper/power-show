﻿<%@ Page Title="" Language="C#" MasterPageFile="~/SuperForm/SuperForm.master" AutoEventWireup="true" CodeFile="cs_templates_combobox_ondemand.aspx.cs" Inherits="SuperForm_cs_templates_combobox_ondemand" %>
<%@ Register TagPrefix="obout" Namespace="Obout.SuperForm" Assembly="obout_SuperForm" %>
<%@ Register TagPrefix="obout" Namespace="Obout.ComboBox" Assembly="obout_ComboBox" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    
    <span class="tdText"><b>ASP.NET Super Form - On-Demand ComboBox Field</b></span>
    
    <br /><br />
    
    <asp:PlaceHolder runat="server" ID="SuperForm1Container" /> 
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>" 
        ProviderName="<%$ ConnectionStrings:NorthwindConnectionString.ProviderName %>" 
        SelectCommand="SELECT OrderID, ShipName, ShipCity, ShipRegion, ShipCountry
                       FROM [Orders] ORDER BY OrderID DESC"
        UpdateCommand="UPDATE Orders SET ShipName=@ShipName, ShipCity=@ShipCity, ShipRegion=@ShipRegion, ShipCountry=@ShipCountry
                       WHERE OrderID=@OrderID"
        InsertCommand="INSERT INTO Orders (ShipName, ShipCity, ShipRegion, ShipCountry)
                        VALUES(@ShipName, @ShipCity, @ShipRegion, @ShipCountry)"
        DeleteCommand="DELETE FROM Orders WHERE OrderID = @OrderID">
        <UpdateParameters>
            <asp:Parameter Name="ShipName" DbType="String" />
            <asp:Parameter Name="ShipCity" DbType="String" />
            <asp:Parameter Name="ShipRegion" DbType="String" />            
            <asp:Parameter Name="ShipCountry" DbType="String" />
            <asp:Parameter Name="OrderID" DbType="Int32" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="ShipName" DbType="String" />
            <asp:Parameter Name="ShipCity" DbType="String" />
            <asp:Parameter Name="ShipRegion" DbType="String" />            
            <asp:Parameter Name="ShipCountry" DbType="String" />
        </InsertParameters>
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>" 
        ProviderName="<%$ ConnectionStrings:NorthwindConnectionString.ProviderName %>"
        SelectCommand="SELECT DISTINCT ShipCountry FROM Orders WHERE ShipCountry LIKE @ShipCountry ORDER BY ShipCountry ASC">
        <SelectParameters>
            <asp:Parameter Name="ShipCountry" DbType="String" DefaultValue="" />
        </SelectParameters>
    </asp:SqlDataSource>
    
    <br /><br />
    
    <span class="tdText">
        Use the <b>TemplateField</b> class to gain full control over the layout of the field.<br /> 
        A TemplateField allows developers to specify different templates for view / add / edit modes.<br /><br />

        This example showcases the use of a TemplateField object for the "Ship Country" field.<br />
        By employing the TemplateField class we can use an On-Demand ComboBox to edit the data from the field.
    </span>
</asp:Content>

