cmake_minimum_required(VERSION 3.27.6)

project(rainbow)

find_package(verilator)

set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS ON)

add_executable(counter_tb sim/counter_tb.cpp)
verilate(
	counter_tb
	SOURCES hdl/counter_tb.v hdl/counter.v
	VERILATOR_ARGS --trace --timing
)

add_executable(decoder_tb sim/decoder_tb.cpp)
verilate(
	decoder_tb
	SOURCES hdl/decoder_tb.v hdl/decoder.v
	VERILATOR_ARGS --trace --timing
)

add_executable(divider_tb sim/divider_tb.cpp)
verilate(
	divider_tb
	SOURCES hdl/divider_tb.v hdl/divider.v
	VERILATOR_ARGS --trace --timing
)
