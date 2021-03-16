using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Guardar_y_visualizar_imagenes_en_SQLServer
{
    public partial class WebForm_MantenimientoDeImagenes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            try
            {
                // Guardar la imagen en la base de datos SQL Server
                SqlConnection oSqlConnection = new Conexion_SQLServer().conectar();
                string query = "Insert Into Imagenes(codigo, imagen) Values(@codigo, @imagen)";
                SqlCommand oSqlCommand = new SqlCommand(query, oSqlConnection);
                oSqlCommand.Parameters.Add("@codigo", SqlDbType.Int).Value = int.Parse(txtCodigo.Text);
                oSqlCommand.Parameters.Add("@imagen", SqlDbType.VarBinary).Value = fuImagen.FileBytes;
                oSqlCommand.ExecuteNonQuery();
                // Mostrar la imagen de la base de datos SQL Server en la página
                imagen.ImageUrl = "~/WebForm_Imagen.aspx?codigo=" + int.Parse(txtCodigo.Text);
                lblMensajeOk.Text = "Se ha guardado la imagen correctamente.";
                lblMensajeError.Text = "";
            }
            catch (Exception ex)
            {
                lblMensajeOk.Text = "";
                lblMensajeError.Text = ex.Message;
            }
        }
    }
}