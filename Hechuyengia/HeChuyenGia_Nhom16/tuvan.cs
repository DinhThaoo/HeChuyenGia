using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace HeChuyenGia_Nhom2
{
    public partial class tuvan : Form
    {
        private List<string> listMadienthoai = new List<string>();
        private List<string> listTendienthoai = new List<string>();
        private List<string> listnoidung = new List<string>();
        private List<string> listmaluat = new List<string>();
        IDictionary<string, string> lstResult = new Dictionary<string, string>();
        IDictionary<string, string> SK = new Dictionary<string, string>(); 
        IDictionary<string, string> DT = new Dictionary<string, string>();

        //Update
        private List<string> lstmahang = new List<string>();
        private List<string> lsttenhang = new List<string>();
        private List<string> lstmatien = new List<string>();
        private List<string> lstgiatien = new List<string>();
        luat_xl xl = new luat_xl();
        sukien_xl sk = new sukien_xl();


        private ketnoi kn = new ketnoi();
        private bool run = false;
        public tuvan()
        {
            InitializeComponent();
        }
        private void loadTableSK()
        {
            string _luatSuyDan = cbhangsx.SelectedValue.ToString()  + "^" + cbgiatien.SelectedValue.ToString() + "^" + cbmausac.SelectedValue.ToString();
            rickluat.Text= _luatSuyDan;
            dataSk.Rows.Clear();
            dataSk.Rows.Add(cbhangsx.SelectedValue.ToString(), cbhangsx.Text);
            dataSk.Rows.Add(cbgiatien.SelectedValue.ToString(), cbgiatien.Text);
            dataSk.Rows.Add(cbmausac.SelectedValue.ToString(), cbmausac.Text);

        }

        private void tuvan_Load(object sender, EventArgs e)
        {
            //load list dienthoai

            string qr = "select * from tblsukien where loaisukien='dienthoai'";
            DataTable tbdt = kn.getTable(qr);
            for (int i = 0; i < tbdt.Rows.Count; i++)
            {
                listMadienthoai.Add(tbdt.Rows[i][0].ToString());
                listTendienthoai.Add(tbdt.Rows[i][1].ToString());
                DT.Add(tbdt.Rows[i][0].ToString(), tbdt.Rows[i][1].ToString());
            }
            
            //load len giá tiền
            qr = "select masukien,motasukien from tblsukien where loaisukien='giatien'";
            DataTable tbKN = kn.getTable(qr);
            cbgiatien.DataSource = tbKN;
            cbgiatien.DisplayMember = "motasukien";
            cbgiatien.ValueMember = "masukien";
            
            //load len hang sx
            qr = "select masukien,motasukien from tblsukien where loaisukien='hangsx'";
            DataTable tbKhoi = kn.getTable(qr);
            cbhangsx.DataSource = tbKhoi;
            cbhangsx.DisplayMember = "motasukien";
            cbhangsx.ValueMember = "masukien";

            //load len mausac
            qr = "select masukien,motasukien from tblsukien where loaisukien='mausac'";
            DataTable tbmausac = kn.getTable(qr);
            cbmausac.DataSource = tbmausac;
            cbmausac.DisplayMember = "motasukien";
            cbmausac.ValueMember = "masukien";

        }


        private int FinIndex(string input, List<string> s)
        {
            int i = 0;
            foreach (string a in s)
            {
                if (input == a)
                {
                    return i;
                }
                i++;
            }
            return 0;
        }

        private void btnReset_Click(object sender, EventArgs e)
        {
            run = false;
            ricKQ.Text = "";
            rickluat.Text = "";
            cbgiatien.Text = "";
            cbhangsx.Text = "";
            dataSk.Rows.Clear();
            lbSg.Text = "";
            lbgoiy2.Text = "";
            cbmausac.Text = "";

            
        }

      
        private void btnthoat_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void btngoiy_Click(object sender, EventArgs e)
        {
            //new
            // load hãng điện thoại
            string queryloaixe = "select * from tblsukien where loaisukien = 'hangsx'";
            DataTable tbhangxe = kn.getTable(queryloaixe);
            lstmahang.Clear();
            for (int i = 0; i < tbhangxe.Rows.Count; i++)
            {
                lstmahang.Add(tbhangxe.Rows[i][0].ToString());
                lsttenhang.Add(tbhangxe.Rows[i][1].ToString());
            }
            //cbhangsx.DataSource = tbhangxe;
            //cbhangsx.DisplayMember = "motasukien";
            //cbhangsx.ValueMember = "masukien";



            // chọn giới tính
            Boolean male = rdNam.Checked;
            Boolean female = rdNu.Checked;
            // chọn mục đích sử dụng
            
            Boolean docbao = rddoc.Checked;
            Boolean chupanh = rdchup.Checked;
            Boolean game = rdgame.Checked;
            // 
            suydientien sd = new suydientien();
            sd.DocLuatTuFfile();
            run = true;
            List<string> gt = new List<string>();
            string _suggest = "";
            lbSg.Text = "";
            if (male)
            {
                gt.Add("F1");
                dataSk.Rows.Add(gt[0], rdNam.Text);
                if (docbao)
                {
                    gt.Add("A1");
                    dataSk.Rows.Add(gt[1], rddoc.Text);


                }
                else if (chupanh)
                {
                    gt.Add("A2");
                    dataSk.Rows.Add(gt[1], rdchup.Text);
                }
                else if (game)
                {
                   
                    gt.Add("A3");
                    dataSk.Rows.Add(gt[1], rdgame.Text);

                }

            }
            else // chọn nữ
            {
                gt.Add("F2");
                dataSk.Rows.Add(gt[0], rdNu.Text);
                if (docbao)
                {
                    gt.Add("A1");
                    dataSk.Rows.Add(gt[1], rddoc.Text);
                }
                else if (chupanh)
                {
                    gt.Add("A2");
                    dataSk.Rows.Add(gt[1], rdchup.Text);
                }
                else
                {
                    gt.Add("A3");
                    dataSk.Rows.Add(gt[1], rdgame.Text);
                }

            }
            int d = 0;
            if (gt.Count > 0)
            {
                int dem = 0;

                foreach (string s in lstmahang)
                {
                    if (!run)
                    {
                        btnReset.Enabled = false;
                        break;
                    }
                    List<string> kl = new List<string>();
                    kl.Add(s);
                    if (sd.SuyDien(gt, kl) == true)
                    {
                        _suggest += "-" + lsttenhang.ElementAt(dem) + "\n";
                        dataSk.Rows.Add(kl[0], lsttenhang.ElementAt(dem));
                        rickluat.Text += "\n" + gt[0] + "^" + gt[1] + "->" + kl[0]  ;
                        d++;
                    }
                    dem++;
                    SendKeys.Flush();
                }
                if (d == 0 && run != false)
                {
                    lbSg.Text = "Hiện tại Cửa hàng chúng tôi chưa có hãng điện thoại phù hợp với quý khách !";
                }
                lbSg.Text = "Chúng tôi gợi ý bạn nên chọn loại hãng sau : \n" + _suggest;

               
            }
        }

        private void btnnhantuvan_Click(object sender, EventArgs e)
        {
            List<string> gt= new List<string>();
            suydientien sd = new suydientien();
            sd.DocLuatTuFfile();
            run = true;
            
            //ricKQ.Text = "";
            if (cbgiatien.SelectedValue.ToString() != "")
            {
                gt.Add(cbgiatien.SelectedValue.ToString());

            }
            if (cbhangsx.SelectedValue.ToString() != "")
            {
                gt.Add(cbhangsx.SelectedValue.ToString());
            }
            if (cbmausac.SelectedValue.ToString() != "")
            {
                gt.Add(cbmausac.SelectedValue.ToString());
            }

            int d = 0;

            if (gt.Count > 0)
            {
                int dem = 0;
                foreach (string s in listMadienthoai)
                {
                    if (!run)
                    {
                        break;
                    }
                    List<string> kl = new List<string>();
                    kl.Add(s);
                    if (sd.SuyDien(gt, kl) == true)
                    {
                        dataSk.Rows.Add(kl[0], listTendienthoai.ElementAt(dem));
                        rickluat.Text +="\n" + gt[0] + "^" + gt[1] + "^" + gt[2] + "->" + kl[0] ;
                        ricKQ.Text += listTendienthoai.ElementAt(dem) + "\n";
                        //lbSgKl.Text += s + "\n";
                        d++;
                    }
                    dem++;
                    SendKeys.Flush();
                }
                if (d == 0 && run != false)
                {
                    ricKQ.Text = "Hiện tại Cửa hàng chúng tôi chưa có điện thoại phù hợp với quý khách!";
                    MessageBox.Show("Hiện tại Cửa hàng chúng tôi chưa có điện thoại phù hợp với quý khách!");
                }
                
                //loadTableSK();
            }
           
        }

        private void btngoiy2_Click(object sender, EventArgs e)
        {
            // load loại xe
            string queryloaixe = "select * from tblsukien where loaisukien = 'giatien'";
            DataTable tbgiatien = kn.getTable(queryloaixe);
            lstmatien.Clear();
            for (int i = 0; i < tbgiatien.Rows.Count; i++)
            {
                lstmatien.Add(tbgiatien.Rows[i][0].ToString());
                lstgiatien.Add(tbgiatien.Rows[i][1].ToString());
            }
            cbgiatien.DataSource = tbgiatien;
            cbgiatien.DisplayMember = "motasukien";
            cbgiatien.ValueMember = "masukien";
            

            // chọn bo nho
            Boolean GB_32 = rb32gb.Checked;
            Boolean GB_64 = rb64gb.Checked;
            // chọn hãng

            Boolean nokia = rbnoki.Checked;
            Boolean oppo = rdoppo.Checked;
            Boolean iphone = rbiphone.Checked;
            Boolean samsung = rbsamsung.Checked;
            // 
            suydientien sd = new suydientien();
            sd.DocLuatTuFfile();
            run = true;
            List<string> gt = new List<string>();
            string _suggest = "";
            lbgoiy2.Text = "";
            if (GB_32)
            {
                gt.Add("B1");
                dataSk.Rows.Add(gt[0], rb32gb.Text);
                if (nokia)
                {
                    gt.Add("D1");
                    dataSk.Rows.Add(gt[1], rbnoki.Text);

                }
                else if (oppo)
                {
                    gt.Add("D2");
                    dataSk.Rows.Add(gt[1], rdoppo.Text);
                }
                
                else if (samsung)
                {
                    gt.Add("D3");
                    dataSk.Rows.Add(gt[1], rbsamsung.Text);
                }
                else if (iphone)
                {
                    gt.Add("D4");
                    dataSk.Rows.Add(gt[1], rbiphone.Text);
                }
               

            }
            else // chọn 64GB
            {
                gt.Add("B2");
                dataSk.Rows.Add(gt[0], rb64gb.Text);
                if (nokia)
                {
                    gt.Add("D1");
                    dataSk.Rows.Add(gt[1], rbnoki.Text);

                }
                else if (oppo)
                {
                    gt.Add("D2");
                    dataSk.Rows.Add(gt[1], rdoppo.Text);
                }
                
                else if (samsung)
                {
                    gt.Add("D3");
                    dataSk.Rows.Add(gt[1], rbsamsung.Text);
                }
                else if (iphone)
                {
                    gt.Add("D4");
                    dataSk.Rows.Add(gt[1], rbiphone.Text);
                }
               

            }
            int d = 0;
            if (gt.Count > 0)
            {
                int dem = 0;

                foreach (string s in lstmatien)
                {
                    if (!run)
                    {
                        btnReset.Enabled = false;
                        break;
                    }
                    List<string> kl = new List<string>();
                    kl.Add(s);
                    if (sd.SuyDien(gt, kl) == true)
                    {
                        _suggest += " - " + lstgiatien.ElementAt(dem) + "\n";
                        dataSk.Rows.Add(kl[0], lstgiatien.ElementAt(dem));
                        rickluat.Text += "\n" + gt[0] + "^" + gt[1] + "->" + kl[0] ;
                        d++;
                    }
                    dem++;
                    SendKeys.Flush();
                }
                if (d == 0 && run != false)
                {
                    lbgoiy2.Text = "Hiện tại Cửa hàng chúng tôi chưa có hãng điện thoại phù hợp với quý khách !";
                }
                lbgoiy2.Text = "Chúng tôi gợi ý bạn giá tiền : \n" + _suggest;

                
            }
        }
    }
}
