using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace antiEbKernel
{
    class Zone
    {
        private int mIDZone;
        public int IDZone
        {
            get { return mIDZone; }
            set { mIDZone = value; }
        }

        private Location mMyLocation;
        public Location MyLocation
        {
            get { return mMyLocation; }
            set { mMyLocation = value; }
        }

        private String mDanger;
        public String Danger
        {
            get { return mDanger; }
            set { mDanger = value; }
        }

        public void Load()
        {
        }
    }
}
