#!/usr/bin/env bash

X=`pwd`
cd ~/workspaces/altus/v1
# npm run build.prod.aot

#cd /Users/kloose/workspaces/ShadowFactory/v4/mfw-web/dist/prod
# s3cmd ls s3://mfw.nomadcml.com
cp -r js fonts plugins axeon-icons css *.html images build
/apps/aws/s3cmd-2.0.0/s3cmd sync . s3://altus.nomadcml.com/

cd $X
