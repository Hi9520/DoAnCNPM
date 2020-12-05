using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyShopHoa.DAO
{
    public class NhapHangDAQ
    {
        private static NhapHangDAQ instance;
        public static NhapHangDAQ Instance
        {
            get { if (instance == null) instance = new NhapHangDAQ(); return NhapHangDAQ.instance; }
            private set { NhapHangDAQ.instance = value; }
        }
        public bool InsertNH(int id, DateTime date)
        {
            string query = string.Format("INSERT NhapHang (MaNH,NgayNH) VALUES ({0},N'{1}')", id, date);
            int result = DataProvider.Instance.ExcuteNonQuery(query);

            return result > 0;
        }
        public bool DeleteNH(int id)
        {
            string query = "DELETE FROM NhapHang WHERE MaNH = " + id;
            int result = DataProvider.Instance.ExcuteNonQuery(query);

            return result > 0;
        }
    }
}
