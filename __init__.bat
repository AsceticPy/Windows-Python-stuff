@ECHO OFF
python -m venv venv
"%~dp0venv\Scripts\python.exe" -m pip install --upgrade pip
IF EXIST "%~dp0requirements.txt" "%~dp0venv\Scripts\pip3.exe" install -r requirements.txt
"%~dp0venv\Scripts\pip.exe" list
PAUSE