<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 
<%@ Page %>
<%@ Register TagPrefix="tm" Namespace="OboutInc.TextMenu" Assembly="obout_TextMenu" %>
<html>
<head>
	<title>Obout TextMenu Transparent Example</title>
</head>
<body style="font: Tahoma 11px;">
	<h2>Obout TextMenu Transparent Example</h2>
	<br />
	<a class="examples" href="Default.aspx?type=ASPNET">� Back to examples</a>
	<br />
	<br />
	<tm:TextMenu runat="server" id="tm1" StyleFolder="styles/transparent">
		<tm:Item ID="id_brands" InnerHtml="Brands"></tm:Item>
			<tm:Item ParentID="id_brands" ID="id_ibm" InnerHtml="IBM"></tm:Item>
			<tm:Item ParentID="id_brands" ID="id_microsoftss" InnerHtml="MICROSOFT"></tm:Item>
			<tm:Item ParentID="id_brands" ID="id_obout" InnerHtml="OBOUT" Url="http://www.obout.com/" UrlTarget="_top"></tm:Item>
				<tm:Item ParentID="id_obout" ID="id_treeview" InnerHtml="TreeView" Url="http://www.obout.com/t2/edraganddrop.aspx" UrlTarget="_top"></tm:Item>
				<tm:Item ParentID="id_obout" ID="id_slidemenu" InnerHtml="Slide Menu" Url="http://www.obout.com/sm3/whatisnew.aspx" UrlTarget="_top"></tm:Item>
				<tm:Item ParentID="id_obout" ID="id_calendar" InnerHtml="Calendar" Url="http://www.obout.com/calendar/" UrlTarget="_top"></tm:Item>
				<tm:Item ParentID="id_obout" ID="id_postback" InnerHtml="AJAXPage" Url="http://www.obout.com/AJAXPage/" UrlTarget="_top"></tm:Item>
				<tm:Item ParentID="id_obout" ID="id_splitter" InnerHtml="Splitter" Url="http://www.obout.com/splitter/" UrlTarget="_top"></tm:Item>
				<tm:Item ParentID="id_obout" ID="id_easymenu" InnerHtml="EasyMenu" Url="http://www.obout.com/em/" UrlTarget="_top"></tm:Item>
				<tm:Item ParentID="id_obout" ID="id_combobox" InnerHtml="Combobox" Url="http://www.obout.com/combobox/" UrlTarget="_top"></tm:Item>
				<tm:Item ParentID="id_obout" ID="id_editor" InnerHtml="HTML Editor" Url="http://www.obout.com/editor_new/" UrlTarget="_top"></tm:Item>
				<tm:Item ParentID="id_obout" ID="id_treedb" InnerHtml="Tree_DB" Url="http://www.obout.com/t_db/index.aspx" UrlTarget="_top"></tm:Item>
				<tm:Item ParentID="id_obout" ID="id_textmenu" InnerHtml="TextMenu" Url="http://www.obout.com/tm/tm.aspx" UrlTarget="_top"></tm:Item>
		<tm:Item ID="id_systems" InnerHtml="Systems"></tm:Item>
			<tm:Item ParentID="id_systems" ID="id_desktops" InnerHtml="Desktops"></tm:Item>
			<tm:Item ParentID="id_systems" ID="id_handhelds" InnerHtml="Handhelds"></tm:Item>
			<tm:Item ParentID="id_systems" ID="id_notebooks" InnerHtml="NoteBooks"></tm:Item>
			<tm:Item ParentID="id_systems" ID="id_servers" InnerHtml="Servers"></tm:Item>
		<tm:Item ID="id_hardware" InnerHtml="Hardware"></tm:Item>
			<tm:Item ParentID="id_hardware" ID="id_accessories" InnerHtml="Accessories"></tm:Item>
			<tm:Item ParentID="id_hardware" ID="id_keyboards" InnerHtml="Keyboards"></tm:Item>
			<tm:Item ParentID="id_hardware" ID="id_memory" InnerHtml="Memory"></tm:Item>
			<tm:Item ParentID="id_hardware" ID="id_printers" InnerHtml="Printers"></tm:Item>
			<tm:Item ParentID="id_hardware" ID="id_videocards" InnerHtml="Video Cards"></tm:Item>
		<tm:Item ID="id_software" InnerHtml="Software"></tm:Item>
			<tm:Item ParentID="id_software" ID="id_applications" InnerHtml="Applications"></tm:Item>
			<tm:Item ParentID="id_software" ID="id_licensing" InnerHtml="Licensing"></tm:Item>
	</tm:TextMenu>
</body>
</html>