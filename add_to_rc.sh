#! /bin/bash
workspace_name="???" # put your add-on-container folder name here
#workspace_name="bin-addon-container" # put your add-on-container folder name here
workspace_dir="$HOME/bin/$workspace_name"
# loop on each dir where add_to_rc exists
for target_dir in $workspace_dir/* ; do
	if [[ -d $target_dir ]]; then
		#---
		# these are the files and directories we need to work on
		env_file="$target_dir/env.sh"
		tool_dir="$target_dir/tools"
		#echo "$target_dir"
		#echo "$env_file"

		#---
		#add env variables in env file
		source $env_file

		#---
		#add tools dir to $PATH
		#echo $tool_dir
		[[ ":$PATH:" != *":$tool_dir:"* ]] && PATH="$tool_dir:${PATH}" # doing this to avoid duplicated entries in $PATH
		export PATH
		#echo $PATH
	fi
done
