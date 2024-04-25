#include "ht.h"
#include "hash.h"
#include <unordered_map>
#include <iostream>
#include <utility>
#include <string>
#include <sstream>
#include <functional>
#include <set>
using namespace std;

//Hash function for purposely creating collisions
struct IntHash2 {
    // size_t size;
    IntHash2() {}
    HASH_INDEX_T operator()(const int& k) const
    {
        return k;
    }
};

int main()
{
    double loadfactor = 0.6;
    const vector<int> sizemap = 
    {
        11, 23, 47, 97, 197, 397, 797, 1597, 3203, 6421
    };
    HashTable<int, int, LinearProber<int>, IntHash2, equal_to<int>> ht(loadfactor, LinearProber<int>(), IntHash2());   
    set<pair<int, int>> items;
    for(size_t i = 0;i<sizemap.size()-1;i++){
        int min = (int)floor(sizemap[i]*loadfactor);
        for(int j = 0; j<=min/2;j++){
            pair<int,int> pair(j,j);
            //insert then delete
            ht.insert(pair);
            ht.remove(j);
            cout << ht.size() << " 0ok" << endl;
            if (ht.find(j) == nullptr){
                cout << ht.size() << " 1ok" << endl;
            }
        }
        if(ht.size() == 0){
            cout << "    2ok" << endl;
        }
        //reinsert the same pair, loc should change
        for(int j = 0; j<(min-(min/2));j++){
            pair<int,int> pair(j,j);
            //insert again
            ht.insert(pair);
            items.insert(pair);
            cout << ht.size() << " pre-3ok" << endl;
            if (ht.probe(j) == (min/2)+1+j)
                cout << ht.size() << " 3ok" << endl;
        }
        if(ht.table_.size() == sizemap[i]){
            cout << ht.size() << " 4ok" << endl;
        }
        if(ht.size() == items.size()){
            cout << ht.size() << " 5ok" << endl;
        }
        //add another should resize/rehash
        pair<int,int> pair((min/2)+1,(min/2)+1);
        ht.insert(pair);
        items.insert(pair);
        if(ht.table_.size() == sizemap[i+1]){
            cout << ht.size() << " 6ok" << endl;
        }
        if(ht.size() == items.size()){
            cout << ht.size() << " 7ok" << endl;
        }
        //should be put into the correct spot, now that
        //the "deleted" items are actually "deleted" when resizing
        for(int j = 0; j<=(min/2+1);j++){
            if(ht.probe(j) == j){
                cout << ht.size() << " 8ok" << endl;
            }
        }
    }
    // EXPECT_TRUE(verifyItems(ht, items));

    //  //Reach the default alpha factor of .4 (5 items /11 items = .45) to force a resize
    //     HashTable<string, int, DoubleHashProber<string, std::hash<string>>, hash<string>, equal_to<string> > ht;
    //     set<pair<string, int>> items;
    //     for(int i = 0; i < 5; i++) {
    //         pair<string, int> newItem(to_string(i), i);
    //         ht.insert(newItem);
    //         items.insert(newItem);
    //     }
    //     cout << "initial size: " << ht.tableSize_ << endl;
    //     // EXPECT_EQ(ht.table_.size(), 11);
    //     //add another item should resize
    //     pair<string,int> newItem(to_string(5),5);
    //     ht.insert(newItem);
    //     items.insert(newItem);
    //     cout << "secondary size: " << ht.tableSize_ << endl;
    //     // EXPECT_EQ(ht.table_.size(), 23);
    //     //check that all the items are still there
    //     // EXPECT_TRUE(verifyItems(ht, items));


    // DoubleHashProber<std::string, MyStringHash > dh;
    // HashTable<
    //     std::string, 
    //     int, 
    //     DoubleHashProber<std::string, MyStringHash >, 
    //     std::hash<std::string>, 
    //     std::equal_to<std::string> > ht(0.7, dh);

    // // This is just arbitrary code. Change it to test whatever you like about your 
    // // hash table implementation.
    // for(size_t i = 0; i < 10; i++){
    //     std::stringstream ss;
    //     ss << "hi" << i;
    //     ht.insert({ss.str(), i});
    // }
    // if( ht.find("hi1") != nullptr ){
    //     cout << "Found hi1" << endl;
    //     ht["hi1"] += 1;
    //     cout << "Incremented hi1's value to: " << ht["hi1"] << endl;
    // }
    // if( ht.find("doesnotexist") == nullptr ){
    //     cout << "Did not find: doesnotexist" << endl;
    // }
    // cout << "HT size: " << ht.size() << endl;
    // ht.remove("hi7");
    // ht.remove("hi9");
    // cout << "HT size: " << ht.size() << endl;
    // if( ht.find("hi9") != nullptr ){
    //     cout << "Found hi9" << endl;
    // }
    // else {
    //     cout << "Did not find hi9" << endl;
    // }
    // ht.insert({"hi7",17});
    // cout << "size: " << ht.size() << endl;
    return 0;
}
