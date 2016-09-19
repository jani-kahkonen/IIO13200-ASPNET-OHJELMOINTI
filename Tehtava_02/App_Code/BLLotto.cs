using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for BLLotto
/// </summary>

namespace Tehtava_02
{
	public class Lotto
	{
		public Lotto()
		{
			//
			// TODO: Add constructor logic here
			//
		}
		
		private uint create_random(uint min, uint max)
		{
			return (uint) random.Next((int)(min), (int)(max));
		}
		
		private bool row_contain(uint num)
		{
            return row.Contains(num);
		}
		
		private void sort_row()
		{
			Array.Sort(row);
		}
		
		public string create_row(uint min, uint max)
		{
			uint i = 0, n = 0;
			
			do
			{
                n = create_random(min, max + 1);

                if (row_contain(n))
                    i = i - 1;
                else
                    row[i] = n;
            }
			while (i++ != row.Length - 1);
			
			sort_row();
			
			return string.Join(",", row);
		}
		
		public Lotto(uint length)
		{
			this.row = new uint[length];
		}
		
		private uint[] row;

        private static Random random = new Random();
	}
}