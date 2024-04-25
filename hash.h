#ifndef HASH_H
#define HASH_H

#include <iostream>
#include <cmath>
#include <random>
#include <chrono>

typedef std::size_t HASH_INDEX_T;

struct MyStringHash {
    HASH_INDEX_T rValues[5] { 983132572, 1468777056, 552714139, 984953261, 261934300 };
    MyStringHash(bool debug = true)
    {
        if(false == debug){
            generateRValues();
        }
    }

    //base conversion
    // void convert(int n, int b, int res[]){
    //     for (int k = 0; n != 0; k++){
    //         res[k] = n % b;
    //         n /= b;
    //     }
    // }


    // hash function entry point (i.e. this is h(k))
    HASH_INDEX_T operator()(const std::string& k) const
    {
        //r[0]*w[0]+r[1]*w[1]+r[2]*w[2]+r[3]*w[3]+r[4]*w[4]
        
        //translate each letter into number (letterDigitToNumber)
        //sections len 6 letters and translate into unsigned long long (64 bit)
        //w[i]=36^5*a1+36^4*a2+36^3*a3+36^2*a4+36*a5+a6
        //convert 

        size_t sLen = k.size();
        size_t sLenCopy = 0;
        HASH_INDEX_T w[5] = {0};
        unsigned long long sum = 0;
        unsigned long long hk = 0;

        HASH_INDEX_T* nums = new HASH_INDEX_T[sLen];

        // int x = 0; int k = 0
        // for (int i = 0; i< slen; i++){
        //     if( x++ ==6 ){
        //         times = 1;
        //         sum = 0;
        //         w[k++] = sum;
        //     }
        //     nums[i] = letter....
        //     times *= 36;
        //     sum += nums[i] * times;
        // }

        for (int i = sLen-1; i >= 0; i--){
            nums[i] = letterDigitToNumber(k[sLen - 1 - i]);
        } 
        
        for(int g = 4; g >= 0; g--){
            sum = 0;
            unsigned long long times = 1;
            for (size_t x = 0; x < 6; x++){
                if (sLenCopy != sLen){
                    sum += nums[sLenCopy] * times;
                    sLenCopy++;
                }else{
                    break;
                }
                times *= 36;
            }
            // std::cout << sum << std::endl;
            w[g] = sum;
            hk += rValues[g] * w[g];
        }

        return hk;
        
    }

    // A likely helper function is to convert a-z,0-9 to an integral value 0-35
    HASH_INDEX_T letterDigitToNumber(char letter) const
    {   
        if ((letter >= '0') && (letter <= '9')){
            return (letter - 22);
        }else if ((letter >= 'A') && (letter <= 'Z')){
            return (letter - 65);
        }else if ((letter >= 'a') && (letter <= 'z')){
            return (letter - 97);
        }

        return 0;
    }

    // Code to generate the random R values
    void generateRValues()
    {
        // obtain a seed from the system clock:
        unsigned seed = std::chrono::system_clock::now().time_since_epoch().count();
        std::mt19937 generator (seed);  // mt19937 is a standard random number generator

        // Simply call generator() [it has an operator()] to get another random number
        for(int i{ 0 }; i < 5; ++i)
        {
            rValues[i] = generator();
        }
    }
};

#endif
