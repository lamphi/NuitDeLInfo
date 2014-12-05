using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using MySql.Data.MySqlClient;


namespace antiEbKernel
{
    public class Class1
    {

        public List<Location> mLocationList;
        public List<Person> mPersonList;

        public void ReadLocationList(String sql)
        {
            List<Location> mLList = new List<Location>();
            Location L = new Location();
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
                    L = new Location();
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

        public void ReadPersonList(String sql)
        {
            List<Person> mLList = new List<Person>();
            Person L = new Person();
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
                    L = new Person();
                    L.IDPerson = rdr.GetInt32(0);
                    L.FirstName = rdr.GetString(1);
                    L.LastName = rdr.GetString(2);
                    L.Mother = rdr.GetInt32(3);
                    L.Father = rdr.GetInt32(4);
                    L.MyVaccin = rdr.GetInt32(5);
                    L.Origin = rdr.GetInt32(6);
                    L.DST = rdr.GetInt32(7);

                    mLList.Add(L);
                }
                mPersonList = mLList;
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

        public void Insert(String sql)
        {
            MySqlConnection conn = null;
            string myConnectionString;


            myConnectionString = "Server=10.41.18.76;Database=antiebola;UID=admin;Password=vodka";

            try
            {
                conn = new MySql.Data.MySqlClient.MySqlConnection();
                conn.ConnectionString = myConnectionString;
                conn.Open();

                MySqlCommand command = new MySqlCommand();
                command.CommandText = sql;
                command.Connection = conn;
                command.ExecuteNonQuery();
                conn.Close();

            }
            catch (MySql.Data.MySqlClient.MySqlException ex)
            {
                throw (ex);
            }
            finally
            {
                if (conn != null)
                {
                    conn.Close();
                }
            }
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
                    Console.WriteLine(rdr.GetInt32(0) + ": "
                        + rdr.GetString(1));
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
