using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace NossaCasa
{
    public partial class MainForm : Form
    {
        public MainForm()
        {
            InitializeComponent();
        }

        private void sairToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void produtosToolStripMenuItem_Click(object sender, EventArgs e)
        {
            ProdutoForm produtoForm = new NossaCasa.ProdutoForm();
            produtoForm.MdiParent = this;
            produtoForm.StartPosition = FormStartPosition.CenterParent;
            produtoForm.Show();
        }
    }
}
