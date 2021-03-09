#!/bin/bash
dirtree() {
        find . | sed -e "s/[^-][^\/]*\//  |/g" -e "s/|\([^ ]\)/|-\1/"
}
dirtree "$1"
