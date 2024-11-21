using Microsoft.EntityFrameworkCore;

namespace Bibliotec.Contexts
{
    // Classe que terá as informações do banco de dados
    public class Context : DbContext
    {
        // Criar um método construtor
        public Context(){
        }

        public Context(DbContextOptions<Context> options) : base(options){
        }

        // OnConfiguring -> Possui a configuracao da conexao com
        //o banco de dados
        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder){
                // colocar as informacoes do banco
                if (!optionsBuilder.IsConfigured){
                optionsBuilder.UseSqlServer(@"
                Data Source=NOTE18-S28\\SQLEXPRESS;
                Inital Catalog = ;
                User Id=sa;
                Password=123;
                Integrated Security=true");
                }
        }
        public DbSet<Categoria> Categoria { get; set; }
        public DbSet<Curso> Curso { get; set; }
        public DbSet<Livro> Livro { get; set; }
        public DbSet<Usuario> Usuario { get; set; }
        public DbSet<LivroCategoria> LivroCategoria { get; set; }
        public DbSet<LivroReserva> LivroReserva { get; set; }
    }
}