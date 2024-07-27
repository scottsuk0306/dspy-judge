.PHONY: style

check_dirs := .

style:
	isort $(check_dirs)
	black --line-length 119 --target-version py310 $(check_dirs)

# Clean up wandb process after process termination
# https://github.com/wandb/wandb/issues/5244#issuecomment-1666349612
clean:
	pkill -u $$(whoami) -f wandb