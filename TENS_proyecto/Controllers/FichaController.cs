using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TENS_proyecto.Controllers
{
    public class FichaController
    {
        private static TENSEntidades entidades = new TENSEntidades();

        public static string AddFicha(int ID_TENS, int ID_PACIENTE, DateTime fecha/*, int disp, int med, int csv, int Aseo*/,string examenes, string procedimientos)
        {

            
            TENS tens = entidades.TENS.Find(ID_TENS);

            Paciente paciente = entidades.Paciente.Find(ID_PACIENTE);
            Programacion_Aseo aseo = entidades.Programacion_Aseo.Find(ID_PACIENTE);
            DispositivoInvasor dispositivo = entidades.DispositivoInvasor.Find(ID_PACIENTE);
            Medicamento medicamento = entidades.Medicamento.Find(ID_PACIENTE);
            ControlSignosVitales controlSignosVitales = entidades.ControlSignosVitales.Find(ID_PACIENTE);

            ficha_paciente e = new ficha_paciente()
            {
                ID_tens2 = tens.ID_tens,
                ID_paciente5 = paciente.ID_paciente,
                ID_Aseo = aseo.ID_paciente3,
                ID_dispositivo = dispositivo.ID_paciente2,
                ID_medicamento = medicamento.ID_paciente1,
                ID_CSV=controlSignosVitales.ID_paciente4,
                fecha=fecha,
                Examenes_pendientes=examenes,
                procedimientos_pendientes=procedimientos
            };
            entidades.ficha_paciente.Add(e);
            entidades.SaveChanges();


            return "Nueva ficha creada.";


        }



        public static ficha_paciente BuscarFicha(int ID)
        {
            int b = ID;
            return entidades.ficha_paciente.SingleOrDefault(i => i.ID_ficha == b);


        }
        public static string removeFicha(int ID)
        {
            ficha_paciente ficha = BuscarFicha(ID);
            if (ficha != null)
            {
                entidades.ficha_paciente.Remove(ficha);
                entidades.SaveChanges();
                return "Revista eliminada";
            }
            else
            {
                return "";
            }
        }
        public static List<ficha_paciente> mostrarfichas()
        {
            var lista = from r in entidades.ficha_paciente
                        select r;

            return lista.ToList();

        }
    }
}