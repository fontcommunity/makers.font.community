#!/bin/bash

echo "Processing Plupload libarary"

wget https://github.com/moxiecode/plupload/archive/v3.1.2.zip
unzip v3.1.2.zip
mv plupload-3.1.2/ plupload
rm v3.1.2.zip
rm plupload/example
rm plupload/examples


