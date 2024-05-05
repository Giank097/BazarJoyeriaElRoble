using System;
using System.Collections.Generic;

namespace ApplicationCore.Models;

public partial class TbOrderItem
{
    public int Id { get; set; }

    public int OrderId { get; set; }

    public int ProductId { get; set; }

    public int Quantity { get; set; }

    public virtual TbOrderDetail Order { get; set; } = null!;

    public virtual TbProduct Product { get; set; } = null!;
}
