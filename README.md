# Beta Batch Prompt
Beta Batch Prompt is a batch script emulator of Command Prompt (cmd.exe). It can be used when Command Prompt is disabled, but not if batch scripts can't be run. It is not to be used for anything illegal, malicious, or immoral.

Always report bugs at [here](https://github.com/HeyITGuyFixIt/Beta-Batch-Prompt/issues).

1. Installation
   1. Download the zip file from GitHub and unzip it.
   2. Open the newly unzipped folder. You will find four (4) files: "Beta Batch Prompt.bat", "debug.bat", "LICENSE", and "README.md". If you run "Beta Batch Prompt.bat", Windows' Smart Screen will prevent you from running it simply because it is a batch script from the internet; you can click `More Info` and then `Run anyway` to run it. I promise there is nothing malicious in this script. Hold me to that promise. Optionally you can view the properties of the script and unblock it, which will cause the Smart Screen to not prevent you from running it.
   3. The script itself is a standalone script, completely independant of any other file. Thus, you can copy and paste it or move it to any location, including (but not limited to) a CD, DVD or even a USB drive.
2. Standard Use
   1. Open Beta Batch Prompt from the location of the script, where ever it may be that you placed it.
   2. You will see the Think Differently command line splash screen. Wait for 2 seconds or press any key to skip it.
   3. It loads the "factory-default" settings or the customized settings (see the next section for how to customize settings).
   4. Once at the command line, you are able to use any Command Prompt available on the computer it is being used. For a list of the basic commands (non-exhaustive), type `help` and hit `Enter`.
   5. To leave Beta Batch Prompt, type `exit` and hit `Enter` or click the `X` at the top right corner of the window.
3. Changing the Settings
   1. Right click on the script and click "Edit".
   2. Scroll down to where it says ":SETTINGS". The following code until it says ":START" are the settings for the script. Please continue with caution, as any misedit can easily break the script.
   3. There are three settings that can be changed: the colors, the starting echo, and the starting CD directory.
   4. To change the colors, go to the line that begins with "@SET "COLORS", and change the value to any set of colors. See "color /?" in a command prompt to see the possible array of colors.
   5. To change the starting echo to either ECHO ON or ECHO OFF, go to the line that begins with "@SET "ECHOTOGGLE" and change the value to either TRUE or FALSE, TRUE being for ECHO ON and FALSE being for ECHO OFF.
   6. To change the starting directory, go to the line that begins with "@SET "CDDIR" and change the value to whatever directory you wish to begin in.
   7. Be sure to save it when you are done.
4. Debug Mode
   1. Debug mode is used to test bugs in BBP. You can use it by opening "debug.bat" or by typing `debug` in BBP.
   2. For most issues, BBP will not close when it runs into an error that would otherwise cause it to close. This allows you to see what error is thrown, if one is.
