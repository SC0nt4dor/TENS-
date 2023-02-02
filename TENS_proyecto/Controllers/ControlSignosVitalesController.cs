using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


namespace TENS_proyecto.Controllers
{
    public class ControlSignosVitalesController
    {
        private static TENSEntidades entidades = new TENSEntidades();
        public static string AñadirCSV(double presionArt1, double presionArt2, int ID, double frecuenciaResp, string Umbral, string sat)
        {

            Paciente paciente = entidades.Paciente.Find(ID);
            double Fi02 = (frecuenciaResp * 4) + 3;
            double pam = (presionArt2 + (presionArt1 * 2)) / 3;

            ControlSignosVitales e = new ControlSignosVitales()
            {
                presion_arterial_diastolica = Convert.ToDecimal(presionArt1),
                presion_arterial_sistolica = Convert.ToDecimal(presionArt2),
                pam = Convert.ToDecimal(pam),
                umbral = Umbral,
                frecuenciaRespiratoria = Convert.ToDecimal(frecuenciaResp),
                Fi02 = Convert.ToDecimal(Fi02),
                ID_paciente4 = paciente.ID_paciente,
                SAT = sat
            };
            entidades.ControlSignosVitales.Add(e);
            entidades.SaveChanges();

            return "";
        }




        public static ControlSignosVitales BuscarCSV(int ID)
        {
            int b = ID;
            return entidades.ControlSignosVitales.SingleOrDefault(i => i.ID_paciente4 == b);

        }

    }
}