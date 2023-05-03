#include <iostream>
#include <fstream>
#include <string>
#include <cmath>
int main () {
    std::ifstream myfile; myfile.open("binary.txt");
    if ( myfile.is_open() ) {
        char mychar;
        int state = 0;
        int bitcounter = 0;
        int bits[8];
        while ( myfile ) {
            mychar = myfile.get();
            if(mychar != '0' && mychar != '1'){ }else{
            int mybit = -1;
            if(mychar == '0')  mybit = 0; 
            if(mychar == '1')  mybit = 1;
            if(mybit == 0 && state == 0){
                state = 1; //Start of new byte detected
            }
            else if(bitcounter >= 8){ //End of new byte
                state = 0; 
                bitcounter = 0;
                char buffer [50];
                int intbyte = 0;
                for(int k = 0; k < 8; k++) intbyte +=  bits[k] * pow(2,k);
                //sprintf(buffer, "Byte parsed: %02X %d%d%d%d %d%d%d%d\n", intbyte, bits[0],bits[1],bits[2],bits[3],bits[4],bits[5],bits[6],bits[7]);
                sprintf(buffer, "%02X\n", intbyte);
                std::cout << buffer;
            }
            else if(state == 1){
                bits[bitcounter] = mybit;
                bitcounter++;
            }
        }
        }
    }
}