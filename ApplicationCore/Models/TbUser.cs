using System;
using System.Collections.Generic;

namespace ApplicationCore.Models;

public partial class TbUser
{
    public int Id { get; set; }

    public string Email { get; set; } = null!;

    public string Password { get; set; } = null!;

    public string FirstName { get; set; } = null!;

    public string LastName { get; set; } = null!;

    public int Telephone { get; set; }

    public string Address { get; set; } = null!;

    public virtual ICollection<TbOrderDetail> TbOrderDetails { get; set; } = new List<TbOrderDetail>();

    public virtual ICollection<TbUserAddress> TbUserAddresses { get; set; } = new List<TbUserAddress>();

    public virtual ICollection<TbUserPayment> TbUserPayments { get; set; } = new List<TbUserPayment>();
}
