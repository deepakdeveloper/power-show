﻿<%@ Page Title="" Language="C#" MasterPageFile="~/ComboBox/ComboBox.master" %>
<%@ Register TagPrefix="obout" Namespace="Obout.ComboBox" Assembly="obout_ComboBox" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    
    <span class="tdText"><b>ASP.NET ComboBox - MenuWidth</b></span>
    
    <br /><br />
    
    <table>
        <tr>
            <td>
                <span class="tdText">auto</span>
                
                <br />
                
                <obout:ComboBox runat="server" ID="ComboBox1" EmptyText="Select a country ..."
                    DataSourceID="sds1" DataTextField="CountryName" DataValueField="CountryID"
                    Width="150"
                    />
            </td>
            <td width="25">&#160;</td>
            <td>
                <span class="tdText">MenuWidth="300"</span>
                
                <br />
                
                <obout:ComboBox runat="server" ID="ComboBox2" EmptyText="Select a country ..."
                    DataSourceID="sds1" DataTextField="CountryName" DataValueField="CountryID"
                    Width="150" MenuWidth="300"
                    />
            </td>
        </tr>
    </table>       
        
    <asp:SqlDataSource ID="sds1" runat="server" SelectCommand="SELECT TOP 15 CountryID, CountryName FROM Country ORDER BY CountryName DESC"
		    ConnectionString="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|continent.mdb;" ProviderName="System.Data.OleDb"></asp:SqlDataSource>
    
    <br /><br />
    
    <span class="tdText">
        The <b>MenuWidth</b> property is used to control the width of the drop down menu of the ComboBox.<br />
        If the property is not set, it will have the same value as the <b>Width</b> property.
    </span>
</asp:Content>

