using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using MySql.Data.MySqlClient;

namespace antiEbKernel
{
    public class Location
    {
        private int mIDCountry;
        public int IDCountry
        {
            get { return mIDCountry; }
            set { mIDCountry = value; }
        }

        private String mCountryName;
        public String CountryName
        {
            get { return mCountryName; }
            set { mCountryName = value; }
        }

        public void Read(String sql)
        {
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
                    this.mIDCountry=rdr.GetInt32(0);
                    this.CountryName =rdr.GetString(1);
                }
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
