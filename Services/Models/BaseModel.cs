using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataEx.DataAnnotations;

namespace Services.Models
{
    public class BaseModel
    {
        [AutoIncrement, Key]
        public UInt64 Id { get; set; }
        public DateTime UtcCreatedOn { get; set; }
        public DateTime CreatedOn { get; set; }

    }
}
