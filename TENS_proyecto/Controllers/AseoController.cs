using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TENS_proyecto.Controllers
{
    public class AseoController
    {
        private static TENSEntidades entidades = new TENSEntidades();

        public static string addAseo(string Tiempo_aseo_cabello, string Hora_baño_cama, string genitales, string hora_ducha,string cavidades, int ID)
        {


            Paciente paciente = entidades.Paciente.Find(ID);
            Programacion_Aseo e = new Programacion_Aseo()
            {
                Hora_Baño_cama = Hora_baño_cama,
                Tiempo_Aseo_cavidades = cavidades,
                Tiempo_Aseo_Genital = genitales,
                Tiempo_lavado_cabello = Tiempo_aseo_cabello,
                hora_ducha = hora_ducha,
                ID_paciente3 = paciente.ID_paciente

            };
            entidades.Programacion_Aseo.Add(e);
            entidades.SaveChanges();

            return "Programacion agregada";



        }

        public static Programacion_Aseo findAseo(int ID)
        {
            int b = ID;
            return entidades.Programacion_Aseo.SingleOrDefault(i => i.ID_paciente3 == b);
        }
    }
}