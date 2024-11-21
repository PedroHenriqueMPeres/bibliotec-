using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace bibliotec.Models
{
    public class LivroReserva
    {   [Key]
        public int LivroReservaId;
        public string LivroReservaName;

        	[ForeignKey("Livro")]
        public int livroID;
        public Categoria Livro;

        [ForeignKey("Usuario")]

        public int UsuarioId;
        public Usuario usuario;
    }
}