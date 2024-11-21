using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace bibliotec.Models
{
    public class LivroCategoria
    {   [Key]
        public int LivroCategoriaId;
        
        [ForeignKey("Livro")]
        public int livroID;
        public Categoria Livro;

        [ForeignKey("Categoria")]

        public int CategoriaID;
        public Categoria categoria;
    }
}