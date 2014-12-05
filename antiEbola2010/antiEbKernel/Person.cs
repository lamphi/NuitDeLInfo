using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace antiEbKernel
{
    public class Person
    {
        private int mIDPerson;
        public int IDPerson
        {
            get { return mIDPerson; }
            set { mIDPerson = value; }
        }

        private String mFirstName;
        public String FirstName
        {
            get { return mFirstName; }
            set { mFirstName = value; }
        }

        private String mLastName;
        public String LastName
        {
            get { return mLastName; }
            set { mLastName = value; }
        }

        private int mMother;
        public int Mother
        {
            get { return mMother; }
            set { mMother = value; }
        }

        private int mFather;
        public int Father
        {
            get { return mFather; }
            set { mFather = value; }
        }

        private int mMyVaccin;
        public int MyVaccin
        {
            get { return mMyVaccin; }
            set { mMyVaccin = value; }
        }

        private int mOrigin;
        public int Origin
        {
            get { return mOrigin; }
            set { mOrigin = value; }
        }

        private int mDST;
        public int DST
        {
            get { return mDST; }
            set { mDST = value; }
        }

        public void Load()
        {
        }
    }
}
