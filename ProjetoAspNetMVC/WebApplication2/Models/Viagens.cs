using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace WebApplication2.Models
{
    public class Viagens
    {
        [Key]
        public int Id { get; set; }
        public string Origem { get; set; }
        public string Destino { get; set; }

        [Display(Name = "Data de Ida")]
        [DataType(DataType.Date)]
        [DisplayFormat(DataFormatString = "{0:dd-MM-yyyy}", ApplyFormatInEditMode = true)]
        public DateTime IDA { get; set; }

        [Display(Name = "Data de Volta")]
        [DataType(DataType.Date)]
        [DisplayFormat(DataFormatString = "{0:dd-MM-yyyy}", ApplyFormatInEditMode = true)]
        public DateTime VOLTA { get; set; }
    }
}