//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace TENS_proyecto
{
    using System;
    using System.Collections.Generic;
    
    public partial class ficha_paciente
    {
        public int ID_ficha { get; set; }
        public Nullable<int> ID_paciente5 { get; set; }
        public Nullable<int> ID_tens2 { get; set; }
        public Nullable<int> ID_dispositivo { get; set; }
        public Nullable<int> ID_medicamento { get; set; }
        public Nullable<int> ID_Aseo { get; set; }
        public Nullable<int> ID_CSV { get; set; }
        public string Examenes_pendientes { get; set; }
        public string procedimientos_pendientes { get; set; }
        public Nullable <System.DateTime> fecha { get; set; }
    
        public virtual ControlSignosVitales ControlSignosVitales { get; set; }
        public virtual DispositivoInvasor DispositivoInvasor { get; set; }
        public virtual Programacion_Aseo Programacion_Aseo { get; set; }
        public virtual Paciente Paciente { get; set; }
        public virtual TENS TENS { get; set; }
        public virtual Medicamento Medicamento { get; set; }
    }
}
