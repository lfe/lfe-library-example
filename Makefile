DEPS = ./deps
LFE_DIR = $(DEPS)/lfe
LFE_EBIN = $(LFE_DIR)/ebin
LFE = $(LFE_DIR)/bin/lfe
LFEC = $(LFE_DIR)/bin/lfec
ERL_LIBS = $(LFE_DIR):./
SOURCE_DIR = ./src
OUT_DIR = ./ebin
TEST_DIR = ./test

get-deps:
	rebar get-deps
	for DIR in $(wildcard $(DEPS)/*); do \
	cd $$DIR; git pull; cd - ; done

compile: get-deps clean-ebin
	rebar compile

shell: compile
	ERL_LIBS=$(ERL_LIBS) $(LFE) -pa $(TEST_OUT_DIR)

clean:
	rebar clean

push:
	git push oubiwann --all

push-all: push
	git push --all