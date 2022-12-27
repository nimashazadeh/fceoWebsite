﻿<%@ Page Language="C#" MasterPageFile="~/MasterPagePortals.master"
    AutoEventWireup="true" CodeFile="HomePageAttachments.aspx.cs" Inherits="Employee_HomePage_HomePageAttachments"
    Title="مدیریت صفحه نخست" %>

<%@ Register Assembly="DevExpress.Web.v17.1, Version=17.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dxhf" %>
<%@ Register Assembly="DevExpress.Web.v17.1, Version=17.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dxp" %>
<%@ Register Assembly="DevExpress.Web.v17.1, Version=17.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dxuc" %>
<%@ Register Assembly="DevExpress.Web.v17.1, Version=17.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dxrp" %>
<%@ Register Assembly="DevExpress.Web.v17.1, Version=17.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dxm" %>
<%@ Register Assembly="DevExpress.Web.v17.1, Version=17.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dxpc" %>
<%@ Register Assembly="TSP.WebControls" Namespace="TSP.WebControls" TagPrefix="TSPControls" %>
<%@ Register Assembly="DevExpress.Web.v17.1, Version=17.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dxe" %>
<%@ Register Assembly="DevExpress.Web.v17.1, Version=17.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dxwgv" %>
<%@ Register Assembly="PersianDateControls 2.0" Namespace="PersianDateControls" TagPrefix="pdc" %>
<%@ Register Assembly="AjaxControls" Namespace="AjaxControls" TagPrefix="asp" %>
<%@ Register Assembly="PersianDateControls 2.0" Namespace="PersianDateControls" TagPrefix="pdc" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
     <script language="javascript" type="text/javascript">
         function ShowMessage(Message) {
             document.getElementById("<%=DivReport.ClientID%>").style.visibility = 'visible';
            document.getElementById("<%=DivReport.ClientID%>").style.display = 'inline';
            document.getElementById('<%=LabelWarning.ClientID%>').innerHTML = Message;
        }
        var Mode = 0; //1:insert, 2:Edit
        function ChangeModeToInsert() {
            Mode = 1;
        }
        function ChangeModeToEdit() {
            Mode = 2;
        }
        function IsInsertMode() {
            if (Mode == 1)
                return true;
            else
                return false;
        }
    </script>

            <div style="text-align: right" dir="rtl" id="DivReport" class="DivErrors" runat="server">
                <asp:Label ID="LabelWarning" runat="server" Text="Label"></asp:Label>[<a class="closeLink"
                    href="#">بستن</a>]
            </div>
            <TSPControls:CustomASPxRoundPanelMenu ID="CustomASPxRoundPanelMenu1" runat="server"
                Width="100%">
                <PanelCollection>
                    <dxp:PanelContent>
                        <table>
                            <tbody>
                                <tr>
                                    <td>
                                        <TSPControls:CustomAspxButton IsMenuButton="true" runat="server" AutoPostBack="False" UseSubmitBehavior="False" Text=" "
                                            EnableTheming="False" ToolTip="جدید" ID="BtnNew"
                                            EnableViewState="False">
                                            <ClientSideEvents Click="function(s, e) {
                                                    ChangeModeToInsert();
	GridViewImages.AddNewRow();
}"></ClientSideEvents>
                                            <Image Url="~/Images/icons/new.png">
                                            </Image>

                                        </TSPControls:CustomAspxButton>
                                    </td>
                                    <td>
                                        <TSPControls:CustomAspxButton IsMenuButton="true" runat="server" AutoPostBack="False" UseSubmitBehavior="False" Text=" "
                                            Width="25px" EnableTheming="False" ToolTip="ویرایش"
                                            ID="btnEdit" EnableViewState="False">
                                            <ClientSideEvents Click="function(s, e) {
			if (GridViewImages.GetFocusedRowIndex()&lt;0)
 	{
   		e.processOnServer=false;
   		ShowMessage(&quot;ردیفی انتخاب نشده است&quot;);
 	}
else
{
ChangeModeToEdit();
	GridViewImages.StartEditRow(GridViewImages.GetFocusedRowIndex());
}	
}"></ClientSideEvents>
                                            <Image Url="~/Images/icons/edit.png">
                                            </Image>
                                        </TSPControls:CustomAspxButton>
                                    </td>
                                    <td>
                                        <TSPControls:CustomAspxButton IsMenuButton="true" runat="server" UseSubmitBehavior="False" EnableClientSideAPI="True"
                                            Text=" " EnableTheming="False" ToolTip="حذف"
                                            ID="btnDelete" EnableViewState="False" OnClick="btnDelete_Click">
                                            <ClientSideEvents Click="function(s, e) {
		if (GridViewImages.GetFocusedRowIndex()&lt;0)
 	{
   		e.processOnServer=false;
   		ShowMessage(&quot;ردیفی انتخاب نشده است&quot;);
 	}
else
{
	 e.processOnServer= confirm('آیا مطمئن به حذف این ردیف هستید؟');
}
}"></ClientSideEvents>
                                            <Image Url="~/Images/icons/delete.png">
                                            </Image>
                                        </TSPControls:CustomAspxButton>
                                    </td>
                                </tr>
                            </tbody>
                        </table>

                    </dxp:PanelContent>
                </PanelCollection>
            </TSPControls:CustomASPxRoundPanelMenu>
            <br />
            <TSPControls:CustomAspxDevGridView ID="GridViewImages" Width="100%" runat="server"
                AutoGenerateColumns="False"
                DataSourceID="ObjSiteImage" ClientInstanceName="GridViewImages" KeyFieldName="ImageId"
                OnRowInserting="GridViewImages_RowInserting" OnRowUpdating="GridViewImages_RowUpdating"
                RightToLeft="True" Settings-ShowTitlePanel="true" OnRowValidating="GridViewImages_RowValidating">

                <Columns>
                       <dxwgv:GridViewDataImageColumn FieldName="ImageURL" Name="ImgUrl" Width="15%" Caption="تصویر"
                        ToolTip="تصویر" VisibleIndex="0">
                        <PropertiesImage AlternateText="تصویر" DescriptionUrl="بزرگنمایی" ImageAlign="Middle"
                            ImageHeight="60px" ImageWidth="60px" DescriptionUrlField="ImageURL">
                            <Style HorizontalAlign="Center"></Style>
                        </PropertiesImage>
                        <Settings AllowSort="False"></Settings>
                        <EditFormSettings></EditFormSettings>
                        <EditItemTemplate>
                            <div align="right">
                                <table>
                                    <tr>
                                        <td>
                                            <TSPControls:CustomAspxUploadControl ID="UploaderImg" runat="server"
                                                ClientInstanceName="UploaderImg" Size="35" OnFileUploadComplete="UploaderImg_FileUploadComplete">
                                                <ClientSideEvents FileUploadComplete="function(s, e) {  
if(e.isValid){
imgEndUploadImg.SetVisible(true);
}
else 
 imgEndUploadImg.SetVisible(false);
}"
                                                    TextChanged="function(s, e) {if(UploaderImg.GetText()!=&quot;&quot;)UploaderImg.Upload();}"></ClientSideEvents>
                                                
                                            </TSPControls:CustomAspxUploadControl>
                                            <div algn="right" style="color: Red">                                               
                                                *اندازه تصویر برای نمایش در صفحه نخست 540*960 می باشد
                                            </div>
                                        </td>
                                        <td>
                                            <dxe:ASPxImage runat="server" ImageUrl="~/Images/button_ok.png" ClientInstanceName="imgEndUploadImg"
                                                ClientVisible="False" ToolTip="تصویر انتخاب شد" ID="imgEndUploadImg">
                                            </dxe:ASPxImage>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </EditItemTemplate>
                    </dxwgv:GridViewDataImageColumn>
                    <dxwgv:GridViewDataMemoColumn Caption="توضیحات" FieldName="Description" VisibleIndex="0"
                        Width="85%">                     
                    </dxwgv:GridViewDataMemoColumn>
                     <dxwgv:GridViewDataTextColumn Caption="لینک" FieldName="LinkURL" VisibleIndex="0" 
                        >
                        <PropertiesTextEdit ClientInstanceName="txtLinkURLInGridViewImages" Style-HorizontalAlign="Left">
                            <ValidationSettings>
                           <RegularExpression ErrorText="آدرس وب سایت را با فرمت http://www.Example.com وارد نمایید"
                                                  ></RegularExpression>
                   </ValidationSettings>     </PropertiesTextEdit>
                    </dxwgv:GridViewDataTextColumn>
                 
                    <dxwgv:GridViewCommandColumn Caption=" " Name=" " VisibleIndex="3" Width="6%" ShowClearFilterButton="true">
                    </dxwgv:GridViewCommandColumn>
                    <dxwgv:GridViewDataTextColumn FieldName="ImageId" Visible="False" VisibleIndex="2">
                        <EditFormSettings Visible="False"></EditFormSettings>
                    </dxwgv:GridViewDataTextColumn>
                </Columns>
                <ClientSideEvents EndCallback="function(s, e) {
if(s.cpMessage!='')
{
 ShowMessage(s.cpMessage);
}
}" />
                <SettingsEditing EditFormColumnCount="1" Mode="PopupEditForm" PopupEditFormModal="True"
                    PopupEditFormVerticalAlign="WindowCenter" />

            </TSPControls:CustomAspxDevGridView>
             <asp:ObjectDataSource ID="ObjSiteImage" runat="server" TypeName="TSP.DataManager.SiteImageManager"
                SelectMethod="FindImageType">
                <SelectParameters>
                    <asp:Parameter DefaultValue="0" Name="ImageType" Type="Int32" />
                </SelectParameters>
            </asp:ObjectDataSource>
            <br />
            <TSPControls:CustomASPxRoundPanelMenu ID="CustomASPxRoundPanelMenu2" runat="server"
                Width="100%">
                <PanelCollection>
                    <dxp:PanelContent>
                        <table style="border-collapse: collapse; background-color: transparent" dir="rtl"
                            cellpadding="0">
                            <tbody>
                                <tr>
                                    <td>
                                        <TSPControls:CustomAspxButton IsMenuButton="true" runat="server" AutoPostBack="False" UseSubmitBehavior="False" Text=" "
                                            EnableTheming="False" ToolTip="جدید" ID="btnNew2"
                                            EnableViewState="False">
                                            <ClientSideEvents Click="function(s, e) {
                                                ChangeModeToInsert();
		GridViewImages.AddNewRow();
}"></ClientSideEvents>
                                            <Image Url="~/Images/icons/new.png">
                                            </Image>
                                        </TSPControls:CustomAspxButton>
                                    </td>
                                    <td>
                                        <TSPControls:CustomAspxButton IsMenuButton="true" runat="server" AutoPostBack="False" UseSubmitBehavior="False" Text=" "
                                            Width="25px" EnableTheming="False" ToolTip="ویرایش"
                                            ID="btnEdit2" EnableViewState="False">
                                            <ClientSideEvents Click="function(s, e) {
			if (GridViewImages.GetFocusedRowIndex()&lt;0)
 	{
   		e.processOnServer=false;
   		ShowMessage(&quot;ردیفی انتخاب نشده است&quot;);
 	}
else
{
ChangeModeToEdit();
	GridViewImages.StartEditRow(GridViewImages.GetFocusedRowIndex());
}	
}"></ClientSideEvents>
                                            <Image Url="~/Images/icons/edit.png">
                                            </Image>
                                        </TSPControls:CustomAspxButton>
                                    </td>
                                    <td>
                                        <TSPControls:CustomAspxButton IsMenuButton="true" runat="server" UseSubmitBehavior="False" EnableClientSideAPI="True"
                                            Text=" " EnableTheming="False" ToolTip="حذف"
                                            ID="btnDelete2" EnableViewState="False" OnClick="btnDelete_Click">
                                            <ClientSideEvents Click="function(s, e) {
		if (GridViewImages.GetFocusedRowIndex()&lt;0)
 	{
   		e.processOnServer=false;
   		ShowMessage(&quot;ردیفی انتخاب نشده است&quot;);
 	}
else
{
	 e.processOnServer= confirm('آیا مطمئن به حذف این ردیف هستید؟');
}
}"></ClientSideEvents>
                                            <Image Url="~/Images/icons/delete.png">
                                            </Image>

                                        </TSPControls:CustomAspxButton>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </dxp:PanelContent>
                </PanelCollection>
            </TSPControls:CustomASPxRoundPanelMenu>
</asp:Content>
