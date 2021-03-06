﻿<%@ Page Language="C#" %>
<%@ Register TagPrefix="obout" Namespace="Obout.Grid" Assembly="obout_Grid_NET" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.OleDb" %>
<%@ Import Namespace="System.Data.SqlClient" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<script type="text/C#" runat="server">
     
    Grid grid1 = new Grid();

     void Page_load(object sender, EventArgs e)
     {
         grid1.ID = "grid1";
         grid1.CallbackMode = true;
         grid1.Serialize = true;
         grid1.AutoGenerateColumns = false;
         grid1.AllowAddingRecords = false;
         grid1.AllowGrouping = true;
         grid1.PageSize = 50;
         grid1.Height = Unit.Percentage(50);

         grid1.FolderStyle = "styles/black_glass";
         grid1.AllowFiltering = true;

         // creating the columns
         Column oCol1 = new Column();
         oCol1.DataField = "OrderID";
         oCol1.ReadOnly = true;
         oCol1.HeaderText = "ORDER ID";
         oCol1.Width = "125";

         Column oCol2 = new Column();
         oCol2.DataField = "ShipName";
         oCol2.HeaderText = "NAME";
         oCol2.Width = "200";

         Column oCol3 = new Column();
         oCol3.DataField = "ShipCity";
         oCol3.HeaderText = "CITY";
         oCol3.Width = "175";

         Column oCol4 = new Column();
         oCol4.DataField = "ShipPostalCode";
         oCol4.HeaderText = "POSTAL CODE";
         oCol4.Width = "150";

         Column oCol5 = new Column();
         oCol5.DataField = "ShipCountry";
         oCol5.HeaderText = "COUNTRY";
         oCol5.Width = "175";



         // add the columns to the Columns collection of the grid
         grid1.Columns.Add(oCol1);
         grid1.Columns.Add(oCol2);
         grid1.Columns.Add(oCol3);
         grid1.Columns.Add(oCol4);
         grid1.Columns.Add(oCol5);


         grid1.DataSourceID = "sds1";

         // add the grid to the controls collection of the PlaceHolder
         phGrid1.Controls.Add(grid1);
     }
    
</script>

<html>
    <head>
        <title>obout ASP.NET Grid examples</title>
        <style type="text/css">
            .tdText
            {
                font: 11px Verdana;
                color: #333333;
            }
            .option2
            {
                font: 11px Verdana;
                color: #0033cc;
                padding-left: 4px;
                padding-right: 4px;
            }
            a
            {
                font: 11px Verdana;
                color: #315686;
                text-decoration: underline;
            }
            a:hover
            {
                color: crimson;
            }
            
            html, body, form
            {
                height: 100%;
            }
            
            .ob_gBody
            {
                border-bottom: 1px solid #EEEEEE;
            }
        </style>
    </head>
    <body>
        <form id="Form1" runat="server">
            <br />
            
            <span class="tdText"><b>ASP.NET Grid - Fixed Height in Percentages</b></span>
            
            <br />
            <br />
            
            <asp:PlaceHolder ID="phGrid1" runat="server"></asp:PlaceHolder>
            
            <asp:SqlDataSource runat="server" ID="sds1" SelectCommand="SELECT TOP 100 * FROM Orders"
    		 ConnectionString="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|Northwind.mdb;" ProviderName="System.Data.OleDb"></asp:SqlDataSource>
            
            <br />
            <br />
            <br />
            
            <span class="tdText">
                Use the <b>Height</b> property to specify a fixed height for the Grid (either in pixels or percentages).<br />
                The height will stay the same when paging, changing the page size, filtering, grouping, etc.<br /><br />
                For this example the Height is set to <b>50%</b>.<br />
                <b>Resize the browser window and the grid will resize accordingly.</b>
            </span>
            
            <br />
            <br />
            <br />
            
            <a href="Default.aspx?type=CSHARP">« Back to examples</a>
        </form>
    </body>
</html>
