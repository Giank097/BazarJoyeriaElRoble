using System;
using System.Collections.Generic;

namespace ApplicationCore.Models;

public partial class TbProduct
{
    public int Id { get; set; }

    public int Sku { get; set; }

    public string Name { get; set; } = null!;

    public string Description { get; set; } = null!;

    public decimal Price { get; set; }

    public int DiscountId { get; set; }

    public int CategoryId { get; set; }

    public int InventoryId { get; set; }

    public virtual TbProdCategory Category { get; set; } = null!;

    public virtual TbProdDiscount Discount { get; set; } = null!;

    public virtual TbProdInventory Inventory { get; set; } = null!;

    public virtual ICollection<TbOrderItem> TbOrderItems { get; set; } = new List<TbOrderItem>();
}
