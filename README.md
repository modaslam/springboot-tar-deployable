# README

#### Deployment Strategies

* After building your project, extract the tar file in the location you want to deploy it from. You can use the command `tar -xvf tar-name.tar` in linux machines.
* The extracted folder will contain two directories, **bin** and **dist**. The **bin** directory contains the scripts you need to run whereas the **dist** folder contains the jar file.
* When you run the **start.sh** script inside **bin** successfully, a **pid.file** will be generated a level above the **bin** directory. This file will contain the process id of the application and is referred by the **shutdown.sh** script to kill the application when needed.