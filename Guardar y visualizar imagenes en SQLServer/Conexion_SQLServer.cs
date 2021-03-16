using System;
using System.Data.SqlClient;

namespace Guardar_y_visualizar_imagenes_en_SQLServer
{
    public class Conexion_SQLServer
    {
        public SqlConnection conectar()
        {
            try
            {
                string data_source = "PC-PRIVADO"; // Servidor del SQL Server
                string initial_catalog = "ASP.Net"; // Base de datos
                string user = "sa"; // Usuario
                string password = "76130211"; // Contraseña
                string cadenaDeConexion =
                    "DATA SOURCE=" + data_source + ";" +
                    "INITIAL CATALOG=" + initial_catalog + ";" +
                    "USER=" + user + ";" +
                    "PASSWORD=" + password+ ";";
                SqlConnection oSqlConnection = new SqlConnection(cadenaDeConexion);
                oSqlConnection.Open();
                return oSqlConnection;
            }
            catch (Exception ex)
            {
                return null;
            }
        }
    }
}