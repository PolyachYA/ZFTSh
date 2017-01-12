#include <iostream>

using namespace std;

bool isSeparator(char c);

int main()
{
    char c,ls='+';
    int64_t s1,s=0;

    cout << "format is:\n*.\nallowed chars are {0,1,2,3,4,5,6,7,8,9,+,-,.}\nenter your string\n-> ";
    do{
        // reset the current sub-sum
        s1=0;
        do{
            cin >> c;
            
            // add c to the end of the current sub-sum if it's not separator
            if(!isSeparator(c)) s1 = s1*10+c-'0';
        }while(!isSeparator(c));
        
        // add current sub-sum to the full sum depending on the current (last) sign
        s+= (ls=='+' ? s1 : -s1);
        
        // save a new last sign
        ls=c;
    }while(ls!='.');
    cout << s << endl;
    return 0;
}

bool isSeparator(char c){ return (c=='+') || (c=='-') || (c=='.'); }
