What is poetry?
- it is a python packaging and dependency management tool
- Instead of manually doing pip install ... or editing requirements.txt, you define your dependencies in one clean file: pyproject.toml
- Poetry creates and uses a virtual environment per project

pyproject.toml
- The main config file that stores:
- project name, version, description
- supported Python versions
- all required libraries

poetry.lock
- This file locks the exact versions of all dependencies to guarantee reproducibility across machines.


How to use dependencies with a Git project?
Upload these two:
- pyproject.toml - main config file
- poetry.lock - exact versions for reproducibility
Then on any new machine:
- git clone http://github.com/yourname/yourproject.git
- cd yourproject
And when everything is set up just launch
- poetry install
What not to commit:
- venv/ folder
- __pycache__/


Main commands:
poetry init - adds .toml file (will ask questions but other then setting your Python version - the rest can be ignored in most cases)
poetry install - create the virtual environment - add dependencies if there is any already
poetry env info - information about the current environment
poetry env info -p - shows only path
poetry config virtualenvs.in-project true - create VE folder in the project folder - IMPORTANT (after this run poetry install)
poetry shell - activate environment
poetry add requests - adding request package (automatically updates .toml file)
poetry remove requests - removes dependency "requests"
exit - deactive VE
poetry env list - list up environments
deactivate - out of the shell and deactivated 
poetry config repositories.test-pypi https://test.pypi.org/legacy - get token, publish repo
poetry build - package build
poetry publish -r test-pypi - publish build