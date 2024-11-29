Small demo to show how hashlink hot reload can work with lime. [The original documentation is here - https://github.com/HaxeFoundation/hashlink/wiki/Hot-Reload](https://github.com/HaxeFoundation/hashlink/wiki/Hot-Reload).

It needs hashlink 1.12 which ships with lime version > [8.0.0](https://github.com/openfl/lime/blob/develop/CHANGELOG.md#800-08302022)

## Workflow

 1. Build the program with `lime build hl`. 
 This will put a copy of the hashlink binary as e.g. `Export/bin/hl/HelloWorld`.
 The actual hashlink bytecode is in `Export/bin/hl/hlboot.dat`

 2. Run the hashlink binary with the argument --hot-reload
 e.g. `./HelloWorld --hot-reload`

 3. Rebuild the bytecode and the program will reload.

The problem with step 3 is that when you call `lime build hl` it will crash the running hashlink binary as the files in `Export/hl/bin` get deleted.

To overcome this, you can copy the `Export/hl/bin` to a different location before running it.  I have provided 2 scripts in the repo to facilitate this.

## Scripts

To do the initial build and copy the export run `./_boot`

To rebuild the bytecode and copy it to the 'safe' export folder run `./_refresh`

### Windows versions

Use `.\_boot.bat` and `.\_refresh.bat`

## Example

In `Main.hx` it checks if bytecode reload has happened each update and if it does then the reload function is called which traces a message.

To test it, run the boot script and then run the refresh script. When you run the refresh script you should see a time stamped message in the console.

Now try changing the message and run the refresh script.