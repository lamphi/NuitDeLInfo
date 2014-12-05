using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace antiEbKernel
{
    class Health
    {
        private int mIDHealth;
        public int IDHealth
        {
            get { return mIDHealth; }
            set { mIDHealth = value; }
        }

        private Vaccin mMyVaccin;
        public Vaccin MyVaccin
        {
            get { return mMyVaccin; }
            set { mMyVaccin = value; }
        }

        private DateTime mMyDate;
        public DateTime MyDate
        {
            get { return mMyDate; }
            set { mMyDate = value; }
        }

        public void Load()
        {
        }
    }
}
