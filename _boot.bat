lime build hl
cp -a Export/hl/bin Export/hl-reload && cd Export/hl-reload
start /B .\HelloWorld --hot-reload &