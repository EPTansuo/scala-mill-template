TARGET=examples

SRCS=$(shell find $(TARGET) -name "*.scala")

MILL=./mill


.PHONY: $(TARGET)

$(TARGET):$(SRCS)
	$(MILL) $(TARGET).compile

run:$(SRCS)
	$(MILL) $(TARGET).run

console:$(SRCS)
	$(MILL) -i $(TARGET).console

clean:
	rm -rf ./out





