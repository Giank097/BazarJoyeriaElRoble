using System;
using System.Collections.Generic;

namespace ApplicationCore.Models;

public partial class TbOrderDetail
{
    public int Id { get; set; }

    public int UserId { get; set; }

    public decimal Total { get; set; }

    public int PaymentId { get; set; }

    public virtual TbPaymentDetail Payment { get; set; } = null!;

    public virtual ICollection<TbOrderItem> TbOrderItems { get; set; } = new List<TbOrderItem>();

    public virtual TbUser User { get; set; } = null!;
}
