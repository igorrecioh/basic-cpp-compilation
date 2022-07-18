
add_library(GTest::GTest INTERFACE IMPORTED)
target_link_libraries(GTest::GTest INTERFACE gtest gtest_main gmock gmock_main pthread)

target_include_directories(matematicas PUBLIC ${CMAKE_SOURCE_DIR}/include)
target_include_directories(fisica PUBLIC ${CMAKE_SOURCE_DIR}/include)

add_executable(matematicas-test matematicas-test.cpp)
add_executable(fisica-test fisica-test.cpp)

target_link_libraries(matematicas-test
 PRIVATE
  GTest::GTest
  matematicas)

target_link_libraries(fisica-test
  PRIVATE
   GTest::GTest
   fisica)

add_test(matematicas-gtest matematicas-test)
add_test(fisica-gtest fisica-test)