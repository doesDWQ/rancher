TARGETS := $(shell ls scripts)

# 编排工具
.dapper:
	@echo Downloading dapper
	@curl -sL https://releases.rancher.com/dapper/latest/dapper-`uname -s`-`uname -m` > .dapper.tmp
	@@chmod +x .dapper.tmp
	@./.dapper.tmp -v
	@mv .dapper.tmp .dapper

# 定义一些列的命令
$(TARGETS): .dapper
	./.dapper $@

trash: .dapper
	./.dapper -m bind trash

trash-keep: .dapper
	./.dapper -m bind trash -k

deps: trash

# 默认的命令
.DEFAULT_GOAL := ci

# 表示这一系列是命令，而不是文件
.PHONY: $(TARGETS)
