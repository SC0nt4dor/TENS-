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
    
    public partial class ControlSignosVitales
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public ControlSignosVitales()
        {
            this.ficha_paciente = new HashSet<ficha_paciente>();
        }
    
        public int ID_CSV { get; set; }
        public Nullable<int> ID_paciente4 { get; set; }
        public Nullable<decimal> frecuenciaRespiratoria { get; set; }
        public Nullable<decimal> pam { get; set; }
        public Nullable<decimal> presion_arterial_sistolica { get; set; }
        public Nullable<decimal> presion_arterial_diastolica { get; set; }
        public Nullable<decimal> Fi02 { get; set; }
        public string umbral { get; set; }
        public string SAT { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ficha_paciente> ficha_paciente { get; set; }
        public virtual Paciente Paciente { get; set; }
    }
}