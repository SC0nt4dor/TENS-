using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TENS_proyecto.Controllers
{
    public class DispositivoController
    {
        private static TENSEntidades entidades = new TENSEntidades();


        public static string addDispositivo(string nombre, string proposito, string areaT, string clasificacion, int ID)
        {

            Paciente paciente = entidades.Paciente.Find(ID);

            DispositivoInvasor e = new DispositivoInvasor()
            {

                nombre_dispositivo = nombre,
                proposito = proposito,
                area_tratada = areaT,
                //clasificacion = clasificacion,
                ID_paciente2 = paciente.ID_paciente

            };
            entidades.DispositivoInvasor.Add(e);
            entidades.SaveChanges();
            return "";
        }





        public static DispositivoInvasor findDispositivo(int ID)
        {
            int b = ID;
            return entidades.DispositivoInvasor.SingleOrDefault(i => i.ID_paciente2 == b);
        }



    }
}