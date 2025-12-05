CXX = g++
CXXFLAGS = -O2 -std=c++17 -Iinclude
LDFLAGS = -lpq -pthread

SRC = $(wildcard src/*.cpp)
TARGET = bin/analytics_mw

all:
	mkdir -p bin
	$(CXX) $(CXXFLAGS) $(SRC) -o $(TARGET) $(LDFLAGS)

clean:
	rm -f bin/analytics_mw
