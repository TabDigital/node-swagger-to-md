#!/bin/bash

@test "can process a JSON file" {
  diff <(node ./bin/cli.js test/json/api.json) \
       <(cat test/json/expected.md)
}

@test "can process JSON on stdin" {
  diff <(node ./bin/cli.js << test/json/api.json) \
       <(cat test/json/expected.md)
}

@test "can process a YAML file" {
  diff <(node ./bin/cli.js --yaml test/yaml/api.yaml) \
       <(cat test/yaml/expected.md)
}
