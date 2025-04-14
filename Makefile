FUNC := g++
copt := -c 
OBJ_DIR := ./bin/
FLAGS := -O3 -fopenmp -lm -g -Werror -std=c++11 -ffast-math -march=native

CPP_FILES := $(wildcard src/*.cpp)
OBJ_FILES := $(addprefix $(OBJ_DIR),$(notdir $(CPP_FILES:.cpp=.obj)))

all:
	$(FUNC) ./main.cpp -o ./main.exe $(FLAGS)

clean:
	rm -f ./*.exe