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
    
    public partial class Programacion_Aseo
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Programacion_Aseo()
        {
            this.ficha_paciente = new HashSet<ficha_paciente>();
        }
    
        public int ID_Aseo { get; set; }
        public Nullable<int> ID_paciente3 { get; set; }
        public string Tiempo_Aseo_cavidades { get; set; }
        public string Hora_Baño_cama { get; set; }
        public string hora_ducha { get; set; }
        public string Tiempo_Aseo_Genital { get; set; }
        public string Tiempo_lavado_cabello { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ficha_paciente> ficha_paciente { get; set; }
        public virtual Paciente Paciente { get; set; }
    }
}
