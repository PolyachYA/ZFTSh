#include <iostream>
#include <string>

using namespace std;

// is 1 if c is ',' or '.'
bool isSeparator(char c);

// is 1 if c is a part of the EN alphabet is separator
bool isIn(char c);

// read char and convert in to UPPER case
char readUpper(void);
void readUpper(char *c);

int main()
{
    char c1,c2;
    bool ok=0;
    int n=0;

    cout << "format is:\n*,*,*,*.....*,*.\nenter your string\n-> ";
    do{
        readUpper(&c1);
        if(isIn(c1)){
            ok=1;
            do{
                readUpper(&c2);
                if(ok && !isSeparator(c2)){
                    ok = (c2>=c1) && isIn(c2);
                    if(ok) c1=c2;
                }
            }while(!isSeparator(c2));
            if(ok) ++n;
        } else {
            // just read to next separator
            do{ cin >> c2; }while(!isSeparator(c2));
        }
    }while(c2!='.');
    cout << n << endl;
    return 0;
}

bool isIn(char c){ return ((c>='A') && (c<='Z')) || isSeparator(c); }
bool isSeparator(char c){ return (c==',') || (c=='.'); }

char readUpper(void)
{
    char c;
    cin >> c;
    return toupper(c);
}

void readUpper(char *c)
{
    cin >> *c;
    *c = toupper(*c);
}
