﻿<%@ Page Language="C#" MasterPageFile="~/ComboBox/ComboBox.master" AutoEventWireup="true" CodeFile="aspnet_ondemand_initial.aspx.cs" Inherits="ComboBox_aspnet_ondemand" %>
<%@ Register TagPrefix="obout" Namespace="Obout.ComboBox" Assembly="obout_ComboBox" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">

    <br />
    
    <span class="tdText"><b>ASP.NET ComboBox - Initial Text</b></span>	
    
    <br /><br />
    
    <obout:ComboBox runat="server" ID="ComboBox1" Width="200" Height="200"
        DataTextField="CountryName" DataValueField="CountryID" EmptyText="Select a country ..."
        EnableLoadOnDemand="true" OnLoadingItems="ComboBox1_LoadingItems">
        <obout:ComboBoxItem runat="server" Text="E" Value="E" Selected="true" />
    </obout:ComboBox>
    
    <br /><br /><br />
    
    <span class="tdText">
        The items of the ComboBox can be loaded on-demand (via AJAX requests). The advantage of using this approach<br />
        is that the items are loaded only when the end user types something into the input field. <br />
        Thus, the page will load very fast because no item is loaded on page load.<br /><br />
        
        In order to enable the on demand loading feature, set the <b>EnableLoadOnDemand</b> property to <span class="option2">true</span>.<br />
        You also need to handle the <b>LoadingItems</b> server-side event, which is executed each time the ComboBox <br />
        requests items from the server via AJAX. The server-side event handler will load all the items that match the text typed in the input field.<br /><br />
        
        If you need to initially load the items that match a specific text, you need to use a <b>ComboBoxItem</b> that has its <b>Text</b> and <b>Value</b><br />
        properties set to the initial text that you want to search for. Also, the <b>Selected</b> property of this ComboBoxItem needs to be set to <span class="option2">true</span>.<br /><br />

        For this sample we set the initial text to "E", and thus upon opening the ComboBox, the countries starting with "E" are loaded.
    </span>
    
</asp:Content>
