#!/bin/bash
echo "**************************"
echo "copying files to temporary build folder"
echo "**************************"
cp -r * /tmp/latexbuild

echo "**************************"
echo "executing generic command ..."
echo "**************************"
pushd "/tmp/latexbuild" || return
$@ > /dev/null
popd || return

echo "**************************"
echo "copying artifacts to working directory ..."
echo "**************************"
for artifact in ${ARTIFACT_FILES//,/ }
do
cp "/tmp/latexbuild/$artifact" .
done