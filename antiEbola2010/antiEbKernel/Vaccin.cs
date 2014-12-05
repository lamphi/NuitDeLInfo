using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace antiEbKernel
{
    class Vaccin
    {
        private int mIDVaccin;
        public int IDVaccin
        {
            get { return mIDVaccin; }
            set { mIDVaccin = value; }
        }

        private String mVaccinName;
        public String VaccinName
        {
            get { return mVaccinName; }
            set { mVaccinName = value; }
        }

        private String mVirus;
        public String Virus
        {
            get { return mVirus; }
            set { mVirus = value; }
        }

        public void Load()
        {
        }
    }
}
