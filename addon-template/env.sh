#! /bin/bash

#---put env variable here---
#export TEST_HOME="$HOME"
#export JAVA_OPTS=

#---put path you want to put in $PATH here---
#dir_to_path=("/Users/peijian/bin/addon-test/test-dir/test-2",
#            "/Users/peijian/bin/addon-test/test-dir/test-3")
dir_to_path=（）


#---DONOT CHANGE---
##---UNCOMMENT FOR TEST
#export TEST_HOME="$HOME"
#dir_to_path=("THIS-IS-TEST-DIR-1",
#            "THIS-IS-TEST-DIR-2")
##---TEST CODE END


for target in "${dir_to_path[@]}"
do
  [[ ":$PATH:" != *":$target:"* ]] && PATH="$target:${PATH}"
  export PATH
done
