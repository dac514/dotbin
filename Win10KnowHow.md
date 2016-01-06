### Where is the Hosts file?

    c:\WINDOWS\system32\drivers\etc\hosts


### Start Menu Shortcuts go in:

    C:\ProgramData\Microsoft\Windows\Start Menu\Programs\*
	

### Configure Notepad++ as Git editor

    git config --global core.editor "'C:/Program Files (x86)/Notepad++/notepad++.exe' -multiInst -notabbar -nosession -noPlugin"	
	
	
### CPU Spikes on Lenovo X220

I keep getting CPU spikes on my laptop. The reason is because of broken webcam drivers. Keyword `risdxc64`

The fix is to 1) manually install the drivers provided by Lenovo IE. Download [g1c814ww.exe](http://support.lenovo.com/ca/en/downloads/ds032431), unpack, open Device Manager, and forcibly point "Integrated Camera -> Properties -> Update Driver..." to aforementioned unpacked DRIVERS dir 2) Turn off automatic driver upgrades in Windows 10 so that new drivers don't get downgraded to MS "signed" versions. (can be done using [ShutUp10](http://www.oo-software.com/en/shutup10)


### Sourcetree

Sourcetree comes with an embedded Git. To use it in PHPStorm, set the path to:

    C:\Users\dac514\AppData\Local\Atlassian\SourceTree\git_local\bin\git.exe

While using the embedded version of git, this error happened:

    C:\Users\dac514\AppData\Local\Atlassian\SourceTree\git_local>git-bash
        0 [main] us 0 init_cheap: VirtualAlloc pointer is null, Win32 error 487
    AllocationBase 0x0, BaseAddress 0x68570000, RegionSize 0x270000, State 0x10000
    C:\Users\dac514\AppData\Local\Atlassian\SourceTree\git_local\bin\bash.exe: *** Couldn't reserve space for cygwin's heap, Win32 error 0

Reason: 
+ http://stackoverflow.com/questions/18502999/git-extensions-win32-error-487-couldnt-reserve-space-for-cygwins-heap-win32
