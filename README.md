# RU101

## Setup environment
* clone the course repo: https://github.com/redislabs-training/ru101, then follow the process.
* only difference is that I've already installed requirement.txt in conda env: `mypy3`, therefore no need to use venv.
* install latest (Feb 2, 2021) stable redis (6.0.10) in ~/Tools folder.
### Q: make `.env` working in vscode
* Answer: use ctrl+F5 to run without debugging. rather than the Green play button on right cornor: Run python file in terminal.
* Workaround: Manually export PYTHONPATH
```
# fxrc @ popos in ~/Projects/ru/ru101 on git:main x [12:26:34] C:1
$ export PYTHONPATH=`pwd`
# fxrc @ popos in ~/Projects/ru/ru101 on git:main x [12:26:55]
$ echo $PYTHONPATH
/home/fxrc/Projects/ru/ru101
```