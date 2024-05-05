using System;
using System.Collections.Generic;

namespace ApplicationCore.Models;

public partial class TbProdDiscount
{
    public int Id { get; set; }

    public string Name { get; set; } = null!;

    public string Description { get; set; } = null!;

    public decimal DiscPercentage { get; set; }

    public bool Active { get; set; }

    public virtual ICollection<TbProduct> TbProducts { get; set; } = new List<TbProduct>();
}
