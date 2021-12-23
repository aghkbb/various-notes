:: Build
:: To generate a docker image using 3 components:
:: 1 - A Dockerfile text file
:: 2 - A build context (folder with source codes and related folders/files)
:: 3 - An image name
docker build -t myrepositoryname/imagename:0.1.0 .

:: Push
:: To upload docker image from local to a 'Docker Registry'
docker push myrepositoryname/imagename:0.1.0

:: Docker Registry
:: A place to store uploaded docker images

:: Pull
:: To download a docker image from the registry to local
docker pull myrepositoryname/imagename:0.1.0
