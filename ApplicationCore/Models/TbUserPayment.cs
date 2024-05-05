using System;
using System.Collections.Generic;

namespace ApplicationCore.Models;

public partial class TbUserPayment
{
    public int Id { get; set; }

    public int UserId { get; set; }

    public string PaymentType { get; set; } = null!;

    public string Provider { get; set; } = null!;

    public int AccountNo { get; set; }

    public DateOnly Expiry { get; set; }

    public virtual TbUser User { get; set; } = null!;
}
