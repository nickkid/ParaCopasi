#Platform
ParaCopasi is written in Python 3. The development and test was on Python 3.7.6 and Python 3.8.3. It currently only support Linux OS. For windows users, Windows Subsystem for Linux (WSL) is recommended. Here is a documentation for WSL installation in Windows 10
https://docs.microsoft.com/en-us/windows/wsl/install-win10
#Prerequisite
##MPICH
Please refer to the download page on the official website of MPICH: https://www.mpich.org/downloads/
##mpi4py
mpi4py can be installed with the pip command.
```
pip install mpi4py
```
##Copasi
Download from http://copasi.org/Download/. In ParaCopasi, the executable of Copasi CLI interface *CopasiSE* is called. The location of executable file *CopasiSE* must be specified. This can be done by either explicitly providing the location to ParaCopasi interfaces (paracopasi class methods or paracopasi_cmd command line), or setting the *COPASIDIR* environment variable as specified in http://copasi.org/Support/Installation/Linux/.
##Example
The following is an example of using ParaCopasi via command line:
```
python ~/projects/ParaCopasi/paracopasi_cmd.py pe --workspace . --result_dir ./results/ --max_workers 500 --task_batch pe_two_step_sGC_activation.py
```