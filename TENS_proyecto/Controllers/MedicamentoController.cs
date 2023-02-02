using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TENS_proyecto.Controllers
{
    public class MedicamentoController
    {
        private static TENSEntidades entidades = new TENSEntidades();

        public static string addMedicamento(int cantidad, string nombre, string clasificacion, int ID)
        {


            Paciente paciente = entidades.Paciente.Find(ID);
            Medicamento e = new Medicamento()
                {
                    cantidad = cantidad,
                    nombre_medicamento = nombre,
                    clasificacion = clasificacion,
                    ID_paciente1= paciente.ID_paciente

                };
                entidades.Medicamento.Add(e);
                entidades.SaveChanges();
            
            return "";

        }


        public static Medicamento findMedicamento(int ID)
        {
            int b = ID;
            return entidades.Medicamento.SingleOrDefault(i => i.ID_paciente1 == b);
        }

    }
    }
