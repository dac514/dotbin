### Where is the Hosts file?

    c:\WINDOWS\system32\drivers\etc\hosts


### Start Menu Shortcuts go in:

    C:\ProgramData\Microsoft\Windows\Start Menu\Programs\*
	

### Configure Notepad++ as Git editor

    git config --global core.editor "'C:/Program Files (x86)/Notepad++/notepad++.exe' -multiInst -notabbar -nosession -noPlugin"	
	
	
### CPU Spikes on Lenovo X220

I keep getting a permanent 25% CPU spike on my laptop. The reason is because of broken Ricoh Media Card (SD card) drivers. I can reproduce the spike by changing Power Options mode from "Power saver" to "High performance." The problem can be observed using [Process Explorer](https://technet.microsoft.com/en-us/sysinternals/processexplorer.aspx?f=255&MSPPError=-2147217396). Problem goes away after reboot (sometimes more than one.) Unresolved. Keyword `risdxc64`


### How to Force Install Drivers

Example: Manually install the camera drivers provided by Lenovo IE. Download [g1c814ww.exe](http://support.lenovo.com/ca/en/downloads/ds032431), unpack, open Device Manager, and forcibly point "Integrated Camera -> Properties -> Update Driver..." to aforementioned unpacked DRIVERS dir 2) Turn off automatic driver upgrades in Windows 10 so that new drivers don't get downgraded to MS "signed" versions. (can be done using [ShutUp10](http://www.oo-software.com/en/shutup10))


### Sourcetree

Sourcetree comes with an embedded Git. To use it in PHPStorm, set the path to:

    C:\Users\dac514\AppData\Local\Atlassian\SourceTree\git_local\bin\git.exe

While using the embedded version of git, this error happened:

    C:\Users\dac514\AppData\Local\Atlassian\SourceTree\git_local>git-bash
        0 [main] us 0 init_cheap: VirtualAlloc pointer is null, Win32 error 487
    AllocationBase 0x0, BaseAddress 0x68570000, RegionSize 0x270000, State 0x10000
    C:\Users\dac514\AppData\Local\Atlassian\SourceTree\git_local\bin\bash.exe: *** Couldn't reserve space for cygwin's heap, Win32 error 0

Reason: 

_"Cygwin uses persistent shared memory sections, which can on occasion become corrupted. The symptom of this is that some Cygwin programs begin to fail, but other applications are unaffected."_

+ http://stackoverflow.com/questions/18502999/git-extensions-win32-error-487-couldnt-reserve-space-for-cygwins-heap-win32
