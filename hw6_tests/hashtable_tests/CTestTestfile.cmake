# CMake generated Testfile for 
# Source directory: /home/codio/workspace/hw6/hw6_tests/hashtable_tests
# Build directory: /home/codio/workspace/hw6/hw6_tests/hashtable_tests
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(HashTable.LinearProberFailureCheck "/usr/bin/valgrind" "--tool=memcheck" "--leak-check=yes" "--trace-children=no" "/home/codio/workspace/hw6/hw6_tests/hashtable_tests/hashtable_tests" "--gtest_filter=HashTable.LinearProberFailureCheck")
add_test(HashTable.DoubleHashProberSequenceCheck "/usr/bin/valgrind" "--tool=memcheck" "--leak-check=yes" "--trace-children=no" "/home/codio/workspace/hw6/hw6_tests/hashtable_tests/hashtable_tests" "--gtest_filter=HashTable.DoubleHashProberSequenceCheck")
add_test(HashTable.DoubleHashProberFailureCheck "/usr/bin/valgrind" "--tool=memcheck" "--leak-check=yes" "--trace-children=no" "/home/codio/workspace/hw6/hw6_tests/hashtable_tests/hashtable_tests" "--gtest_filter=HashTable.DoubleHashProberFailureCheck")
add_test(HashTable.Constructor "/usr/bin/valgrind" "--tool=memcheck" "--leak-check=yes" "--trace-children=no" "/home/codio/workspace/hw6/hw6_tests/hashtable_tests/hashtable_tests" "--gtest_filter=HashTable.Constructor")
add_test(HashTable.Insert "/usr/bin/valgrind" "--tool=memcheck" "--leak-check=yes" "--trace-children=no" "/home/codio/workspace/hw6/hw6_tests/hashtable_tests/hashtable_tests" "--gtest_filter=HashTable.Insert")
add_test(HashTable.InsertDuplicate "/usr/bin/valgrind" "--tool=memcheck" "--leak-check=yes" "--trace-children=no" "/home/codio/workspace/hw6/hw6_tests/hashtable_tests/hashtable_tests" "--gtest_filter=HashTable.InsertDuplicate")
add_test(HashTable.InsertCollision "/usr/bin/valgrind" "--tool=memcheck" "--leak-check=yes" "--trace-children=no" "/home/codio/workspace/hw6/hw6_tests/hashtable_tests/hashtable_tests" "--gtest_filter=HashTable.InsertCollision")
add_test(HashTable.InsertResize "/usr/bin/valgrind" "--tool=memcheck" "--leak-check=yes" "--trace-children=no" "/home/codio/workspace/hw6/hw6_tests/hashtable_tests/hashtable_tests" "--gtest_filter=HashTable.InsertResize")
add_test(HashTable.InsertResizeFactor "/usr/bin/valgrind" "--tool=memcheck" "--leak-check=yes" "--trace-children=no" "/home/codio/workspace/hw6/hw6_tests/hashtable_tests/hashtable_tests" "--gtest_filter=HashTable.InsertResizeFactor")
add_test(HashTable.Find "/usr/bin/valgrind" "--tool=memcheck" "--leak-check=yes" "--trace-children=no" "/home/codio/workspace/hw6/hw6_tests/hashtable_tests/hashtable_tests" "--gtest_filter=HashTable.Find")
add_test(HashTable.FindCollisions "/usr/bin/valgrind" "--tool=memcheck" "--leak-check=yes" "--trace-children=no" "/home/codio/workspace/hw6/hw6_tests/hashtable_tests/hashtable_tests" "--gtest_filter=HashTable.FindCollisions")
add_test(HashTable.Remove "/usr/bin/valgrind" "--tool=memcheck" "--leak-check=yes" "--trace-children=no" "/home/codio/workspace/hw6/hw6_tests/hashtable_tests/hashtable_tests" "--gtest_filter=HashTable.Remove")
add_test(HashTable.RemoveNothing "/usr/bin/valgrind" "--tool=memcheck" "--leak-check=yes" "--trace-children=no" "/home/codio/workspace/hw6/hw6_tests/hashtable_tests/hashtable_tests" "--gtest_filter=HashTable.RemoveNothing")
add_test(HashTable.RemoveCollisions "/usr/bin/valgrind" "--tool=memcheck" "--leak-check=yes" "--trace-children=no" "/home/codio/workspace/hw6/hw6_tests/hashtable_tests/hashtable_tests" "--gtest_filter=HashTable.RemoveCollisions")
add_test(HashTable.TestSize "/usr/bin/valgrind" "--tool=memcheck" "--leak-check=yes" "--trace-children=no" "/home/codio/workspace/hw6/hw6_tests/hashtable_tests/hashtable_tests" "--gtest_filter=HashTable.TestSize")
add_test(HashTable.TestEmpty "/usr/bin/valgrind" "--tool=memcheck" "--leak-check=yes" "--trace-children=no" "/home/codio/workspace/hw6/hw6_tests/hashtable_tests/hashtable_tests" "--gtest_filter=HashTable.TestEmpty")
add_test(HashTable.LogicErrorTest "/usr/bin/valgrind" "--tool=memcheck" "--leak-check=yes" "--trace-children=no" "/home/codio/workspace/hw6/hw6_tests/hashtable_tests/hashtable_tests" "--gtest_filter=HashTable.LogicErrorTest")
add_test(HashTable.InsertDoubleHashProbeCollision "/usr/bin/valgrind" "--tool=memcheck" "--leak-check=yes" "--trace-children=no" "/home/codio/workspace/hw6/hw6_tests/hashtable_tests/hashtable_tests" "--gtest_filter=HashTable.InsertDoubleHashProbeCollision")
add_test(HashTable.InsertStressTestResizeOneLoadFactor "/usr/bin/valgrind" "--tool=memcheck" "--leak-check=yes" "--trace-children=no" "/home/codio/workspace/hw6/hw6_tests/hashtable_tests/hashtable_tests" "--gtest_filter=HashTable.InsertStressTestResizeOneLoadFactor")
add_test(HashTable.InsertStressTestResizeNotOneLoadFactor "/usr/bin/valgrind" "--tool=memcheck" "--leak-check=yes" "--trace-children=no" "/home/codio/workspace/hw6/hw6_tests/hashtable_tests/hashtable_tests" "--gtest_filter=HashTable.InsertStressTestResizeNotOneLoadFactor")
add_test(HashTable.StressInsertRemoveResizeLinear "/usr/bin/valgrind" "--tool=memcheck" "--leak-check=yes" "--trace-children=no" "/home/codio/workspace/hw6/hw6_tests/hashtable_tests/hashtable_tests" "--gtest_filter=HashTable.StressInsertRemoveResizeLinear")
