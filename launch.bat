@ECHO OFF
SET PYTHON_FILE=test1.py

IF NOT EXIST "%~dp0src" (
	MKDIR "src"
)

IF EXIST "%~dp0%PYTHON_FILE%" (
	COPY "%~dp0%PYTHON_FILE%" "%~dp0src\%PYTHON_FILE%"
	DEL "%~dp0%PYTHON_FILE%"
	@ECHO Le fichier Python a ete replace dans le dossier src, merci de relancer ce fichier.
) ELSE (
	IF NOT EXIST "%~dp0src\%PYTHON_FILE%" (
		@ECHO Le fichier %PYTHON_FILE% est absent du repertoire src et du repertoire courant
	) ELSE (
		IF EXIST "%~dp0venv" (
			"%~dp0venv\Scripts\python.exe" "%~dp0src\%PYTHON_FILE%"
		) ELSE (
			python "%~dp0src\%PYTHON_FILE%"
		)
		
	)
)
PAUSE