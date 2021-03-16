<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm_MantenimientoDeImagenes.aspx.cs" Inherits="Guardar_y_visualizar_imagenes_en_SQLServer.WebForm_MantenimientoDeImagenes" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Guardar y visualizar imagenes en SQL Server</title>
    <style>
        @import url('https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i');
        *,
        *::after,
        *::before {
            font-family: 'Open Sans', sans-serif;
            margin: 0;
            padding: 0;
        }
        body {
            background-image: url(MisImagenes/background.jpg);
            background-repeat: repeat;
        }
        h1 {
            color: #fff;
            margin-bottom: 25px;
        }
        input[type="text"] {
            border-radius: 5px;
            padding: 0.5% 1.5%;
            text-align: center;
        }
        #formMantenimiento {
            padding: 2.5%;
        }
        .contenedor {
            background-color: rgba(0, 66, 99, 0.5);
            border: 1px solid #069;
            border-radius: 5px;
            margin-bottom: 25px;
            padding: 1.5%;
        }
        .row {
            display: inline-block;
            font-size: 15px;
            padding: 0.5% 0;
            text-align: center;
            width: 100%;
        }
        .column {
            color: #fff;
            font-size: 15px;
            display: inline-block;
            float: left;
            padding: 0% 1%;
        }
        .column.left {
            text-align: right;
            width: 40%;
        }
        .column.right {
            text-align: left;
            width: 55%;
        }
        #btnGuardar {
            background-color: #069;
            border: 1px solid #b1b1b1;
            border-radius: 5px;
            color: #fff;
            cursor: pointer;
            font-size: 12.5px;
            padding: 0.75% 2.5%;
        }
        #btnGuardar:hover {
            background-color: #fff;
            border: 1px solid #b1b1b1;
            color: #069;
        }
        .ok {
            color: #11bb11;
            font-weight: bold;
        }
        .error {
            color: #ff0000;
            font-weight: bold;
        }
        #imagen {
            height: 200px;
        }
    </style>
</head>
<body>
    <form id="formMantenimiento" runat="server">
        <div class="contenedor">
            <div class="row">
                <h1>Guardar y visualizar imagenes en SQL Server</h1>
            </div>
            <div class="row">
                <div class="column left">Código:</div>
                <div class="column right"><asp:TextBox ID="txtCodigo" runat="server"></asp:TextBox></div>
            </div>
            <div class="row">
                <div class="column left">Imagen:</div>
                <div class="column right"><asp:FileUpload ID="fuImagen" runat="server" /></div>
            </div>
            <div class="row">
                <asp:Button ID="btnGuardar" OnClick="btnGuardar_Click" runat="server" Text="Guardar" />
            </div>
        </div>
        <div>
            <div class="row">
                <asp:Label CssClass="ok" ID="lblMensajeOk" runat="server"></asp:Label>
                <asp:Label CssClass="error" ID="lblMensajeError" runat="server"></asp:Label>
            </div>
            <div class="row"><br /></div>
        </div>
        <div>
            <div class="row">
                <asp:Image ID="imagen" runat="server" />
            </div>
        </div>
    </form>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script type="text/javascript">
        $("#txtCodigo").keydown(function (event) {
            switch (event.keyCode) {
                case 8:
                case 37:
                case 38:
                case 39:
                case 40:
                case 46:
                case 48:
                case 49:
                case 50:
                case 51:
                case 52:
                case 53:
                case 54:
                case 55:
                case 56:
                case 57:
                case 190:
                    console.log(event.keyCode);
                    break;
                default:
                    event.preventDefault();
            }
        })
    </script>
</body>
</html>
