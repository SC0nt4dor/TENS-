using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;


namespace TENS_proyecto.Controllers
{
    public class TENSController
    {
        private static TENSEntidades entidades = new TENSEntidades();
        public static TENS findTens(string correo)
        {
            string b = correo;
            return entidades.TENS.SingleOrDefault(i => i.Persona.email == b);


        }

        public static TENS findTensID(int ID)
        {
            int b = ID;
            return entidades.TENS.SingleOrDefault(i => i.ID_tens == b);


        }

        public static TENS login(string correo, string contra)
        {
            string MD5 = GetMD5(contra);
            TENS t = findTens(correo);
            if (t != null)
            {
                string b = MD5;
                return entidades.TENS.SingleOrDefault(i => i.contrasena == b);
            }
            else
            {
                return null;
            }
        }
        public static string crearCuentas(string nombre, string apellido_pat, string apellido_mat, string Correo, string contraseña, string rut)
        {
            try
            {
                Persona p = new Persona()
                {
                    nombre = nombre,
                    apellido_paterno = apellido_pat,
                    apellido_materno = apellido_mat,
                    email = Correo,
                    RUT = rut
                };
                TENS tens = new TENS()
                {
                    contrasena = contraseña,
                };

                entidades.TENS.Add(tens);
                entidades.Persona.Add(p);
                entidades.SaveChanges();
                return "";
            }
            catch (Exception err)
            {
                return err.Message;
            }




        }


        /* public static string GetSHA256(string str)
         {
             SHA256 sha256 = SHA256Managed.Create();
             ASCIIEncoding encoding = new ASCIIEncoding();
             byte[] stream = null;
             StringBuilder sb = new StringBuilder();
             stream = sha256.ComputeHash(encoding.GetBytes(str));
             for (int i = 0; i < stream.Length; i++) sb.AppendFormat("{0:x2}", stream[i]);
             return sb.ToString();
         }*/

        public static string cambiarContra(string contraseña, string correo)
        {
            string MD5 = GetMD5(contraseña);
            TENS tens = findTens(correo);
            tens.contrasena =MD5;

            entidades.SaveChanges();
            return "";

        }
        public static string GetMD5(string contrasena)
        {
            MD5 md5 = MD5CryptoServiceProvider.Create();
            ASCIIEncoding codificar = new ASCIIEncoding();
            byte[] stream = null;
            StringBuilder sb = new StringBuilder();
            stream = md5.ComputeHash(codificar.GetBytes(contrasena));
            for (int i = 0; i < stream.Length; i++) sb.AppendFormat("{0:x2}", stream[i]);
            return sb.ToString();
        }



    }
}






