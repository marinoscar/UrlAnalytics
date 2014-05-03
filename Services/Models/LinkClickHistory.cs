using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Services.Models
{
    public class LinkClickHistory : BaseModel
    {
        public UInt64 LinkId { get; set; }
        public UInt64? IpAddress { get; set; }
        public string Browser { get; set; }
        public string Source { get; set; }
        public string Platform { get; set; }
        public Int16 CreatedOnDayOfYear { get; set; }
        public Int16 CreatedOnYear { get; set; }
    }
}
