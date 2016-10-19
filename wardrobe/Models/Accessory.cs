//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace wardrobe.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Accessory
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Accessory()
        {
            this.Outfits = new HashSet<Outfit>();
        }
    
        public int AccessoryID { get; set; }
        public string AccessoryName { get; set; }
        public string AccessoryPhoto { get; set; }
        public int AccessoryTypeID { get; set; }
        public int ColorID { get; set; }
        public Nullable<int> SeasonID { get; set; }
        public Nullable<int> OccassionID { get; set; }
    
        public virtual AccessoryType AccessoryType { get; set; }
        public virtual Color Color { get; set; }
        public virtual Occassion Occassion { get; set; }
        public virtual Season Season { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Outfit> Outfits { get; set; }
    }
}