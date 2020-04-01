### Not Working, wait for linux support
FROM mcr.microsoft.com/dotnet/core/sdk:3.1.201-bionic

RUN dotnet new --install Microsoft.Quantum.ProjectTemplates \
 && dotnet new console -lang "Q#" -o HelloWorld

WORKDIR HelloWorld

CMD dotnet run