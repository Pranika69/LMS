﻿<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPages/AdminDashboard.Master" CodeBehind="AdminDashboard.aspx.cs" Inherits="LearningManagementSystem.Pages.Admin.AdminDahboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="dash-content">
         <div class="overview">
             <div class="title">
                 <i class="uil uil-tachometer-fast-alt"></i>
                 <span class="text">Dashboard</span>
             </div>
             <div class="boxes">
                 <div class="box box1">
                     <i class="uil uil-thumbs-up"></i>
                     <span class="text">Total Likes</span>
                     <span class="number">50,120</span>
                 </div>
                 <div class="box box2">
                     <i class="uil uil-comments"></i>
                     <span class="text">Comments</span>
                     <span class="number">20,120</span>
                 </div>
                 <div class="box box3">
                     <i class="uil uil-share"></i>
                     <span class="text">Total Share</span>
                     <span class="number">10,120</span>
                 </div>
             </div>
         </div>
  </div>
</asp:Content>
