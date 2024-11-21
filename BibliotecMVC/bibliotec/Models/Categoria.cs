using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace bibliotec.Models
{
    public class Categoria
    {   [Key]
        public string nome;
        public int CategoriaID;

       
    }
}