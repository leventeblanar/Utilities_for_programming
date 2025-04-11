<h2>Python Virtual Environments</h2>

**Why Virtual environments are so important**
- isolate dependencies per projects
- avoid global version conflicts
- help you ship reproducible code
- keep your workspace clean and safe

As they are an industry standard, this is a must to learn.

**Creating a virtual environment:**
- python -m venv venv

**Activating a virtual env.:**
- venv\Scripts\activate

**Deactivating a virtual env.:**
- deactivate


**Good habits to develop:**
- always create a venv
- always have a requirements.txt and keep it updated
- never commit venv/ to Git
- only install what you need
- use a clear folder structure


When programming in a git repository:
- create a .gitignore file and include: .venv
- we won't upload virtual environments but having a requirements.txt in the folder shows what the other developer has to have 
- by simply pip install -r requirements.txt the other dev will have everything they need for the project


<h3>Advanced:</h3>
pipenv or poetry: smarter dependency + environment managers<br>
conda: if you work in data science / scientific computing<br>
tox: for testing multiple environments<br>
Docker: for true containerized environments<br>