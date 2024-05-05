using System;
using System.Collections.Generic;

namespace ApplicationCore.Models;

public partial class TbProdCategory
{
    public int Id { get; set; }

    public string Name { get; set; } = null!;

    public string Description { get; set; } = null!;

    public virtual ICollection<TbProduct> TbProducts { get; set; } = new List<TbProduct>();
}
