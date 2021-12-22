:: This line just in case someone accidentally double-clicks this file
start "" "%ProgramFiles(x86)%\Notepad++\notepad++.exe" "%CD%\qwe.bat"
goto :eof

:::::::::::::::::::::::
:: Maven Plugin Goals::
:::::::::::::::::::::::

mvn clean
:: clean

:::::::::::::::::::::
:: Docker Commands ::
:::::::::::::::::::::

:: Build application
:: Assign name 'getting-started' to container
:: Use Dockerfile in current directory (.)
docker build -t getting-started .

:: Run container 'getting-started'
:: map port 3000 to port 3000
docker run -dp 3000:3000 getting-started

:: List running containers
docker ps

:: Stop container
docker stop <CONTAINER ID>

:: Remove container
docker rm <CONTAINER ID>

:: Push to dockerhub
docker push regulatedrot/getting-started

:: Rename image
docker tag getting-started regulatedrot/getting-started
