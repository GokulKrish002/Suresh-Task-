<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Suresh.Index" %>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Userlock</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.2/font/bootstrap-icons.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .lights {
            height: 140px;
            width: 140px;
        }

        .table-area {
            margin-right: 2%;
        }

        .status-area {
            font-size: 50px;
            margin-left:10px;
        }

        .lights {
            height: 170px;
            width: 170px;
            border-radius: 50%;
            margin:5px;
            background-color:gray;
        }
    </style>
</head>
<body>

    <div class="container-fluid">
        <form method="post" runat="server">
            <div class="row">
                <div class="col-lg-8 col-md-12 table-area">

                    <div class="input area m-5">
                        <p class="status-area">Search</p>
                        <div class="d-flex">
                            <asp:TextBox ID="TextBox1" runat="server" class="form-control"></asp:TextBox>
                            <asp:Button ID="Button1" runat="server" class="btn btn-primary" Text="Search" OnClick="Button1_Click1" />
                        </div>
                    </div>
                    <asp:GridView ID="TableView" runat="server">
                        <FooterStyle CssClass="table" />
                    </asp:GridView>

                </div>
                <div class="col-lg-3 col-md-12 m-5 ml-5 ">
                    <h1 class="status-area">Status</h1>

                    <asp:Button ID="Btn_red" runat="server" Text="" CssClass="lights"/>
                    <asp:Button ID="Btn_yellow" runat="server" Text="" CssClass="lights" />
                    <asp:Button ID="Btn_green" runat="server" Text="" CssClass="lights" />
                    
                </div>
            </div>
        </form>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
    <script src="script.js"></script>
</body>
</html>
