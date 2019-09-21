#!/bin/sh
SRC_ROOT=`git rev-parse --show-toplevel`
echo "$SRC_ROOT"

mkdir -p "$SRC_ROOT/$HOOKS_DIR"
cd "$SRC_ROOT"
echo "Current folder: $PWD"

HOOKS_DIR=`git rev-parse --git-path hooks`
echo "$HOOKS_DIR"

echo "Hooks dir: $SRC_ROOT/$HOOKS_DIR"
cp "$SRC_ROOT"/.hooks/* "$SRC_ROOT/$HOOKS_DIR"

MODULES_DIR=`git rev-parse --git-path modules`
cd "$SRC_ROOT/$MODULES_DIR"
for f in *; do
    if [ -d ${f} ]; then
        mkdir -p "${f}/hooks"
        cp "$SRC_ROOT"/.hooks/* "${f}/hooks/"
    fi
done

cd "$SRC_ROOT"
# code snippets
mkdir -p "${HOME}/Library/Developer/Xcode/UserData/CodeSnippets"
cp "$PWD"/.codeSnippets/* "${HOME}/Library/Developer/Xcode/UserData/CodeSnippets/"
