#include <bits/stdc++.h>
//! وَٱسۡتَعِینُوا۟ بِٱلصَّبۡرِ وَٱلصَّلَوٰةِۚ وَإِنَّهَا لَكَبِیرَةٌ إِلَّا عَلَى ٱلۡخَـٰشِعِینَ
using namespace std;


int main()
{
    // Test case 1
    /*
    int rows = 3;
    int cols = 3;
    int matrix[rows][cols] = {{1,1,1},{1,0,1},{1,1,1}};
    */

    // test case 2
    int rows = 3;
    int cols = 4;
    int matrix[rows][cols] = {{0,1,2,0},{3,4,1,2},{1,3,5,5}};
    vector<int> ith;
    vector<int> jth;
    for(int i = 0 ; i < rows ; i++)
    {
        for(int j = 0 ; j < cols ; j++)
        {
            if(matrix[i][j] == 0)
            {
                ith.push_back(i);
                jth.push_back(j);
            }
        }
    }
    int it = 0,
        jt = 0;
    while(it < ith.size())
    {
        for(int i = 0 ; i < rows ; i++)
        {
            for(int j = 0 ; j < cols ; j++)
            {

                if( jth[it] == j || ith[it] == i)
                    matrix[i][j] = 0;
            }


        }

        it++;
    }
    // this for displa the matrix

    for(int i = 0 ; i < rows ; i++)
    {
        for(int j = 0 ; j < cols ; j++)
        {
            cout << matrix[i][j] << " " ;
        }
        cout << endl;
    }
    return 0;
}
