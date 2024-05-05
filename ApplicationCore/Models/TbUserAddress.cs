using System;
using System.Collections.Generic;

namespace ApplicationCore.Models;

public partial class TbUserAddress
{
    public int Id { get; set; }

    public int UserId { get; set; }

    public string AddressLine1 { get; set; } = null!;

    public string AddressLine2 { get; set; } = null!;

    public string City { get; set; } = null!;

    public string PostalCode { get; set; } = null!;

    public string Country { get; set; } = null!;

    public int Telephone { get; set; }

    public int Mobile { get; set; }

    public virtual TbUser User { get; set; } = null!;
}
