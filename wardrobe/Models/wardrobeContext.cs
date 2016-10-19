using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace wardrobe.Models
{
    public class wardrobeContext : DbContext
    {
        // You can add custom code to this file. Changes will not be overwritten.
        // 
        // If you want Entity Framework to drop and regenerate your database
        // automatically whenever you change your model schema, please use data migrations.
        // For more information refer to the documentation:
        // http://msdn.microsoft.com/en-us/data/jj591621.aspx
    
        public wardrobeContext() : base("name=wardrobeContext")
        {
        }

        public System.Data.Entity.DbSet<wardrobe.Models.Accessory> Accessories { get; set; }

        public System.Data.Entity.DbSet<wardrobe.Models.AccessoryType> AccessoryTypes { get; set; }

        public System.Data.Entity.DbSet<wardrobe.Models.Color> Colors { get; set; }

        public System.Data.Entity.DbSet<wardrobe.Models.Occassion> Occassions { get; set; }

        public System.Data.Entity.DbSet<wardrobe.Models.Season> Seasons { get; set; }

        public System.Data.Entity.DbSet<wardrobe.Models.Bottom> Bottoms { get; set; }

        public System.Data.Entity.DbSet<wardrobe.Models.BottomType> BottomTypes { get; set; }

        public System.Data.Entity.DbSet<wardrobe.Models.Footwear> Footwears { get; set; }

        public System.Data.Entity.DbSet<wardrobe.Models.FootwearType> FootwearTypes { get; set; }

        public System.Data.Entity.DbSet<wardrobe.Models.Outfit> Outfits { get; set; }

        public System.Data.Entity.DbSet<wardrobe.Models.Top> Tops { get; set; }

        public System.Data.Entity.DbSet<wardrobe.Models.TopType> TopTypes { get; set; }
    }
}
