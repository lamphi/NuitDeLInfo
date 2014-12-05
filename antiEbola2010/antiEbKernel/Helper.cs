using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using MySql.Data.MySqlClient;

namespace antiEbKernel
{
    class Helper
    {
        private static List<Location> mLocationList;
        public static List<Location> LocationList
        {
            get
            {
                if (mLocationList == null)
                {
                    ReadLocationList("select * from location");
                    return mLocationList;
                }
                else
                    return mLocationList;
            }
            set { mLocationList = value; }
        }





        public static void ReadLocationList(String sql)
        {
            List<Location> mLList = new List<Location>();
            Location L = null;
            string myConnectionString;
            MySqlDataReader rdr = null;
            MySqlConnection conn = null;


            myConnectionString = "Server=10.41.18.76;Database=antiebola;UID=admin;Password=vodka";

            try
            {
                conn = new MySql.Data.MySqlClient.MySqlConnection();
                conn.ConnectionString = myConnectionString;

                conn.Open();

                MySqlCommand cmd = new MySqlCommand(sql, conn);
                rdr = cmd.ExecuteReader();

                while (rdr.Read())
                {
                    L.IDCountry = rdr.GetInt32(0);
                    L.CountryName = rdr.GetString(1);
                    mLList.Add(L);
                }
                mLocationList = mLList;
            }
            catch (MySql.Data.MySqlClient.MySqlException ex)
            {
                throw (ex);
            }
            finally
            {
                if (rdr != null)
                {
                    rdr.Close();
                }

                if (conn != null)
                {
                    conn.Close();
                }

            }
        }
    }
}
