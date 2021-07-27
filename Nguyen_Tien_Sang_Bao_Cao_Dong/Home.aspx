<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Nguyen_Tien_Sang_Bao_Cao_Dong.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="/css/main.css"/>
           
</head>
<body>
      <form class="form1" runat="server">
    <div class="container">
            <button onclick="show()" class="add-table">Thêm Bảng</button>
            <div class="list-table">
            <h3 class="tile-list-table">Danh Sách Bảng</h3>
                 <asp:CheckBoxList ID="CheckBoxList1"  runat="server">
                 </asp:CheckBoxList>
                 <button class="add-table add-table-inner">Thêm</button>
             </div>  
        <div class="title">
            <h3>Danh Sách Bảng</h3>
            <h3>Tiêu Đề</h3>
            <h3>Lựa Chọn</h3>
        </div>
                 <button class="add-table">Tạo Báo Cáo</button>
    </div>
     </form> 
    <script src="/scripts/main.js"></script>
</body>
</html>
