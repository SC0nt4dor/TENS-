using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


namespace TENS_proyecto.Controllers
{
    public class PacienteController
    {
        private static TENSEntidades entidades = new TENSEntidades();
        public static Paciente BuscarPacienteRut(int ID)
        {

            int b = ID;
            return entidades.Paciente.SingleOrDefault(i => i.ID_paciente == b);


        }
        

        public static string addPaciente(string Nombre, string apellido_mat, string apellido_pat, string Rut, string enferm, string ant, string alergia, int peso, string Genero)
        {
          
                Persona p = new Persona()
                {
                    nombre = Nombre,
                    apellido_paterno = apellido_pat,
                    apellido_materno = apellido_mat,
                    RUT = Rut,
                    genero = Genero
                };
                Paciente e = new Paciente()
                {
                    enfermedad = enferm,
                    antecedentes = ant,
                    alergias = alergia,
                    peso = peso,
                    Persona = p
                };

                entidades.Persona.Add(p);
                entidades.Paciente.Add(e);
                entidades.SaveChanges();
                return "Paciente agregado";
            }
            
          

        



        public static List<Paciente> ListaPaciente()
        {

            var item = from r in entidades.Paciente
                       select r;


            return item.ToList();

        }
    }
}