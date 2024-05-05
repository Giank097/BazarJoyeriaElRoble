using System;
using System.Collections.Generic;

namespace ApplicationCore.Models;

public partial class TbProdInventory
{
    public int Id { get; set; }

    public int Quantity { get; set; }

    public virtual ICollection<TbProduct> TbProducts { get; set; } = new List<TbProduct>();
}
