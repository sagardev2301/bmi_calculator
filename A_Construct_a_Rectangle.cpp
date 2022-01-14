#include <bits/stdc++.h>
using namespace std;


int main()
{
       int T;
       cin >> T;
       while(T--)
       {
              int a,b,c;
              cin >> a >> b >> c;

              if(a == b){
                     if(c%2 == 0){
                            cout<< "YES\n" ;
                     }
                     else{
                            cout << "NO\n";
                     }
              }
              else if(b == c){
                     if(a%2 == 0){
                            cout << "YES\n";
                     }
                     else{
                            cout << "NO\n";
                     }
              }
              else if(c == a){
                     if(b%2 == 0){
                            cout << "YES\n";
                     }
                     else{
                            cout << "NO\n";
                     }
              }
              else{

              if( (a-b) == c || (a-b) == (-c)){
                     cout << "YES\n";
              }
              else if((b-c) == a || (b-c) == (-a)){
                     cout << "YES\n";
              }
              else if((c-a) == b || (c-a) == (-b)){
                     cout << "YES\n";
              }
              else{
                     cout << "NO\n";
              }
              }
       }
}