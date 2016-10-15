using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SQLite;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using WSqliteConexao;

namespace NossaCasa
{
    public partial class ProdutoForm : Form
    {
        Conexao conexao = new Conexao();

        public ProdutoForm()
        {
            InitializeComponent();
            popularGrid();
            
        }

        private void popularGrid()
        {
            string sql = "select * from VIEW_COMANDA";
            SQLiteDataReader reader = conexao.ExecQuery(sql);
            dgvProdutos.DataSource = reader;
        }
        private void btnPesquisar_Click(object sender, EventArgs e)
        {
            PesquisarForm pesquisar = new PesquisarForm();
            pesquisar.MdiParent = Application.OpenForms["MainForm"];
            pesquisar.StartPosition = FormStartPosition.CenterScreen;
            pesquisar.Show();
        }
    }
}
