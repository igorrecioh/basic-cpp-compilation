
add_library(GTest::GTest INTERFACE IMPORTED)
target_link_libraries(GTest::GTest INTERFACE gtest gtest_main gmock gmock_main pthread)

add_executable(ejemplo-test ejemplo-test.cpp)
target_link_libraries(ejemplo-test
 PRIVATE
  GTest::GTest)

add_test(ejemplo-gtest ejemplo-test)