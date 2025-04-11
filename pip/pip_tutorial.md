<h2>Python Virtual Environment and pip for beginners: https://www.youtube.com/watch?v=eDe-z2Qy9x4&t=171s</h2>

pip stands for "Pip Installs Packages".
It's the package manager for Python — the tool that helps you:

- Install Python packages from PyPI
- Upgrade them
- Uninstall them
- List what's installed
- Work with requirements files

Every time you run something like pip install pandas, pip goes out to PyPI, grabs the package, and installs it (plus any dependencies) into your environment.

All of the commands listed below are used in the terminal (either in cmd or Vs Codes integrated terminal)

**Basic install methods for pip**
- pip install (library)
- python -m pip install (library) -- use this instead of pip install when using multiple Python versions
- pip install (library)==2.30.0 -- [this will install a certain version of the library]
- py -m pip install -U (library) -- [update library to current release]

**Uninstall**
- py -m pip uninstall requests


**Checking already installed libraries:**
- pip list
- pip show (library)

**File usage**
- pip freeze > requirements.txt -- export libraries to file
- pip install -r requirements.txt -- install from file