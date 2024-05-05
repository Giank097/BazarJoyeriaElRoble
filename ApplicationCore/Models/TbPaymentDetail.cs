using System;
using System.Collections.Generic;

namespace ApplicationCore.Models;

public partial class TbPaymentDetail
{
    public int Id { get; set; }

    public int OrderId { get; set; }

    public decimal Amount { get; set; }

    public string Provider { get; set; } = null!;

    public string Status { get; set; } = null!;

    public virtual ICollection<TbOrderDetail> TbOrderDetails { get; set; } = new List<TbOrderDetail>();
}
