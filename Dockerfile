### Not Working, wait for linux support
FROM mcr.microsoft.com/dotnet/core/sdk:3.1

RUN dotnet new --install Microsoft.Quantum.ProjectTemplates \
 && dotnet new console -lang "Q#" -o HelloWorld

WORKDIR HelloWorld

CMD dotnet run
