﻿<%@ Page Title="" Language="VB" MasterPageFile="~/ComboBox/ComboBox.master" AutoEventWireup="true" CodeFile="vb_settings_allowedit.aspx.vb" Inherits="ComboBox_vb_settings_allowedit" %>
<%@ Register TagPrefix="obout" Namespace="Obout.ComboBox" Assembly="obout_ComboBox" %>
<%@ Register TagPrefix="obout" Namespace="Obout.Interface" Assembly="obout_Interface" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <br />
    
    <span class="tdText"><b>ASP.NET ComboBox - AllowEdit</b></span>
    
    <br /><br />
            
    <obout:OboutCheckBox runat="server" ID="OboutCheckBox1" 
        Text="Allow Edit" AutoPostBack="true" Checked="true" OnCheckedChanged="OboutCheckBox1_CheckedChanged" /> 
        
    <br /><br />
    <asp:PlaceHolder runat="server" ID="ComboBox1Container" />
    
    
    <asp:SqlDataSource ID="sds1" runat="server" SelectCommand="SELECT TOP 10 CustomerID, CompanyName FROM Customers ORDER BY CompanyName DESC"
	    ConnectionString="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|Northwind.mdb;" ProviderName="System.Data.OleDb"></asp:SqlDataSource>
	
    <br /><br />
    
    <span class="tdText">
        By default, the ComboBox allows end users to type into the input field. <br />
        The typing triggers the autocomplete, filtering, on demand loading features.<br /><br />
        
        Sometimes, you want to disable typing into the input field, and make the ComboBox <br />
        act more like a DropDownList. This can easily be done by setting the <b>AllowEdit</b> property to <span class="option2">false</span>.
        
    </span>
</asp:Content>

