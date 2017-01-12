#include <iostream>

using namespace std;

// is true if c is in [0;G] range or is '.'
bool isIn(char c);
// is true if number represented by c is odd
bool isOdd(char c);

int main()
{
    char c;
    bool ok=0;
    bool start=0;

    cout << "format is:\n*.\nenter your number\n-> ";
    do{
        cin >> c;

        // check for 1st zero
        if(!start){
            if(c=='0') break;
            start=1;
        }

        // char must be in acceptable range
        if(!isIn(c)) break;

        // last char should be odd
        if(c!='.') ok = isOdd(c);
    }while(c!='.');
    // ok <=> last not-dot char was odd
    // c=='.' <=> we finished do-while loop correctly (not by break)
    // for YES must be both
    cout << ((ok && c=='.') ? "YES" : "NO");
    return 0;
}

bool isOdd(char c){ return ((c=='1') || (c=='3') || (c=='5') || (c=='7') || (c=='9') || (c=='B') || (c=='D') || (c=='F')); }
bool isIn(char c){ return ((c>='0') && (c<='9')) || ((c>='A') && (c<='G')) || c=='.'; }
