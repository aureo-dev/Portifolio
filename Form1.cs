using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Matrizes
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            label1.Text = "";


            string[,] matriz = new string[10, 10];

            for (int linha = 0; linha < matriz.GetLength(0); linha++)
            {
                for (int coluna = 0; coluna < matriz.GetLength(1); coluna++)
                {
                    matriz[linha, coluna] = "*";
                }
            }

            for (int linha = 0; linha < matriz.GetLength(0); linha++)
            {
                for (int coluna = 0; coluna < matriz.GetLength(1); coluna++)
                {
                    if (linha == 0 || coluna % 2 == 0)
                    {
                        label1.Text += matriz[linha, coluna] + " ";
                    }
                    else
                    {
                        label1.Text += "  ";
                    }
                }
                label1.Text += "\n";
            }
            label1.Text += "O tamanho da matriz é: " + matriz.Length;
        }



        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void button3_Click(object sender, EventArgs e)
        {
            label1.Text = "";
            string[,] matriz = new string[5, 10];

            for (int linha = 0; linha < matriz.GetLength(0); linha++)
            {
                for (int coluna = 0; coluna < matriz.GetLength(1); coluna++)
                {
                    matriz[linha, coluna] = "*";
                }
            }

            for (int linha = 0; linha < matriz.GetLength(0); linha++)
            {
                for (int coluna = 0; coluna < matriz.GetLength(1); coluna++)
                {
                    if (linha == 4)
                    {
                        label1.Text += matriz[linha, coluna] + " ";
                    }
                    else if (linha == 3 && coluna > 0 && coluna < 9)
                    {
                        label1.Text += matriz[linha, coluna] + " ";
                    }
                    else if (linha == 2 && coluna > 1 && coluna < 8)
                    {
                        label1.Text += matriz[linha, coluna] + " ";
                    }
                    else if (linha == 1 && coluna > 2 && coluna < 7)
                    {
                        label1.Text += matriz[linha, coluna] + " ";
                    }
                    else if (linha == 0 && coluna > 3 && coluna < 6)
                    {
                        label1.Text += matriz[linha, coluna] + " ";
                    }
                    else
                    {
                        label1.Text += "  ";
                    }
                }
                label1.Text += "\n";
            }
            
        }

        private void button2_Click(object sender, EventArgs e)
        {
            label1.Text = "";
            string[,] matriz = new string[10, 10];

            for (int linha = 0; linha < matriz.GetLength(0); linha++)
            {
                for (int coluna = 0; coluna < matriz.GetLength(1); coluna++)
                {
                    matriz[linha, coluna] = "*";
                }
            }

            for (int linha = 0; linha < matriz.GetLength(0); linha++)
            {
                for (int coluna = 0; coluna < matriz.GetLength(1); coluna++)
                {
                    if (linha == 4 || linha == 5)
                    {
                        label1.Text += matriz[linha, coluna] + " ";
                    }

                    else if (linha == 3 && coluna > 0 && coluna < 9)
                    {
                        label1.Text += matriz[linha, coluna] + " ";
                    }
                    else if (linha == 6 && coluna > 0 && coluna < 9)
                    {
                        label1.Text += matriz[linha, coluna] + " ";
                    }
                    else if (linha == 2 && coluna > 1 && coluna < 8)
                    {
                        label1.Text += matriz[linha, coluna] + " ";
                    }
                    else if (linha == 7 && coluna > 1 && coluna < 8)
                    {
                        label1.Text += matriz[linha, coluna] + " ";
                    }
                    else if (linha == 1 && coluna > 2 && coluna < 7)
                    {
                        label1.Text += matriz[linha, coluna] + " ";
                    }
                    else if (linha == 8 && coluna > 2 && coluna < 7)
                    {
                        label1.Text += matriz[linha, coluna] + " ";
                    }
                    else if (linha == 0 && coluna > 3 && coluna < 6)
                    {
                        label1.Text += matriz[linha, coluna] + " ";
                    }
                    else if (linha == 8 && coluna > 3 && coluna < 6)
                    {
                        label1.Text += matriz[linha, coluna] + " ";
                    }

                    else
                    {
                        label1.Text += "  ";
                    }
                }
                label1.Text += "\n";
            }
            
           
        }
    }
}


