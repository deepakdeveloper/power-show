﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Poll/Poll.master" AutoEventWireup="true" CodeFile="cs_results_vote_count.aspx.cs" Inherits="Poll_cs_results_vote_count" %>
<%@ Register TagPrefix="obout" Namespace="Obout.Ajax.UI.Poll" Assembly="Obout.Ajax.UI" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server" />
    
    <br />

	<span class="tdText"><b>ASP.NET Poll - Results - Display Vote Count</b></span>
    
    <br />
    <br />

    <obout:OboutCheckBox runat="server" ID="OboutCheckBox1" Text="Display Vote Count" AutoPostBack="true" Checked="true" />

    <br />
    <br />

    <asp:PlaceHolder ID="phPoll1" runat="server"></asp:PlaceHolder>
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:PollConnectionString %>" 
        ProviderName="<%$ ConnectionStrings:PollConnectionString.ProviderName %>" 
        SelectCommand="SELECT * FROM [Answers] WHERE PollID = 1"
        UpdateCommand="UPDATE Answers SET Votes = Votes + 1 WHERE AnswerID = @AnswerID" />

    <br /><br /><br />

    <div style="width: 450px;" class="tdText">
        Use the <b>ResultStyle.DisplayVotes</b> property to indicate whether the total number of votes for an answer should be displayed in the <b>Results</b> mode.
    </div>

</asp:Content>
    
  

 