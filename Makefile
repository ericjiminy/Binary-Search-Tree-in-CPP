# Eric Chun - jc2ppp - 10/6/20 - Makefile

CXX = clang++ $(CXXFLAGS)
CXXFLAGS = -Wall
DEBUG = -g
OBJECTS = BinaryNode.cpp BinarySearchTree.cpp BSTPathTest.cpp

a.out: $(OBJECTS)
	$(CXX) $(DEBUG) $(OBJECTS) -o a.out

BinaryNode.o: BinaryNode.cpp BinaryNode.h
BinarySearchTree.o: BinarySearchTree.cpp BinaryNode.h BinarySearchTree.h
BSTPathTest.o: BSTPathTest.cpp BinarySearchTree.h BinaryNode.h

.PHONY: clean
clean:
	-rm -f *.o *~ a.out
