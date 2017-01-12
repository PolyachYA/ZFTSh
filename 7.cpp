#include <iostream>

using namespace std;

int main()
{
    char c;
    int n=0;

    cout << "format is:\n*.\nenter your string\n-> ";
    do{
        cin >> c;
        switch(c){
            case '(': ++n; break;
            case ')': --n; break;
        }
    }while((c!='.') && (n>=0));
    cout << (n==0 ? "YES" : "NO");
    return 0;
}
