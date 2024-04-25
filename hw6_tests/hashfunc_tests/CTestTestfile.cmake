# CMake generated Testfile for 
# Source directory: /home/codio/workspace/hw6/hw6_tests/hashfunc_tests
# Build directory: /home/codio/workspace/hw6/hw6_tests/hashfunc_tests
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(HashFunc.ExampleOne "/usr/bin/valgrind" "--tool=memcheck" "--leak-check=yes" "--trace-children=no" "/home/codio/workspace/hw6/hw6_tests/hashfunc_tests/hashfunc_tests" "--gtest_filter=HashFunc.ExampleOne")
add_test(HashFunc.ExampleTwo "/usr/bin/valgrind" "--tool=memcheck" "--leak-check=yes" "--trace-children=no" "/home/codio/workspace/hw6/hw6_tests/hashfunc_tests/hashfunc_tests" "--gtest_filter=HashFunc.ExampleTwo")
add_test(HashFunc.ExampleThree "/usr/bin/valgrind" "--tool=memcheck" "--leak-check=yes" "--trace-children=no" "/home/codio/workspace/hw6/hw6_tests/hashfunc_tests/hashfunc_tests" "--gtest_filter=HashFunc.ExampleThree")
add_test(HashFunc.LargestInputString "/usr/bin/valgrind" "--tool=memcheck" "--leak-check=yes" "--trace-children=no" "/home/codio/workspace/hw6/hw6_tests/hashfunc_tests/hashfunc_tests" "--gtest_filter=HashFunc.LargestInputString")
add_test(HashFunc.StringEmpty "/usr/bin/valgrind" "--tool=memcheck" "--leak-check=yes" "--trace-children=no" "/home/codio/workspace/hw6/hw6_tests/hashfunc_tests/hashfunc_tests" "--gtest_filter=HashFunc.StringEmpty")
add_test(HashFunc.String1 "/usr/bin/valgrind" "--tool=memcheck" "--leak-check=yes" "--trace-children=no" "/home/codio/workspace/hw6/hw6_tests/hashfunc_tests/hashfunc_tests" "--gtest_filter=HashFunc.String1")
add_test(HashFunc.String7 "/usr/bin/valgrind" "--tool=memcheck" "--leak-check=yes" "--trace-children=no" "/home/codio/workspace/hw6/hw6_tests/hashfunc_tests/hashfunc_tests" "--gtest_filter=HashFunc.String7")
add_test(HashFunc.String12 "/usr/bin/valgrind" "--tool=memcheck" "--leak-check=yes" "--trace-children=no" "/home/codio/workspace/hw6/hw6_tests/hashfunc_tests/hashfunc_tests" "--gtest_filter=HashFunc.String12")
add_test(HashFunc.String13 "/usr/bin/valgrind" "--tool=memcheck" "--leak-check=yes" "--trace-children=no" "/home/codio/workspace/hw6/hw6_tests/hashfunc_tests/hashfunc_tests" "--gtest_filter=HashFunc.String13")
add_test(HashFunc.StringCase "/usr/bin/valgrind" "--tool=memcheck" "--leak-check=yes" "--trace-children=no" "/home/codio/workspace/hw6/hw6_tests/hashfunc_tests/hashfunc_tests" "--gtest_filter=HashFunc.StringCase")
add_test(HashFunc.TestRandomize "/usr/bin/valgrind" "--tool=memcheck" "--leak-check=yes" "--trace-children=no" "/home/codio/workspace/hw6/hw6_tests/hashfunc_tests/hashfunc_tests" "--gtest_filter=HashFunc.TestRandomize")
