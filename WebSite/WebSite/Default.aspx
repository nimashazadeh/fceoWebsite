﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <meta name="viewport" content="width=device-width" charset="utf-8" />
        <meta name="enamad" content="645433363" />
    <title>سازمان نظام مهندسی ساختمان استان فارس</title>
              <meta property="og:type" content="website" />
    <meta property="og:title"  content="سازمان نظام مهندسی ساختمان استان فارس"  />
    <meta property="og:site_name"  content="سازمان نظام مهندسی ساختمان"  />
    <meta property="og:description" content="descriptionmywebsite"  />
    <meta property="og:image" content="/Images/Arm.png" />
</head>
<frameset id="fstMain" border="0" framespacing="0" rows="*" frameborder="0" runat="server">

<FRAME name="OnlinePage" id="MainFram"  marginWidth="0" marginHeight="0" src="<% Response.Write(Session["CurrentPage"].ToString()); %>" frameBorder="0" noResize scrolling="auto">
</FRAME>
</frameset>
</html>