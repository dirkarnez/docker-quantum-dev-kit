FROM mcr.microsoft.com/dotnet/core/sdk:3.1

RUN apt-get update -y \ 
&& apt-get -y --no-install-recommends install \
    libgomp1 \
&& apt-get clean \
&& rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN dotnet new -i Microsoft.Quantum.ProjectTemplates \
 && dotnet new console -lang "Q#" -o HelloWorld

WORKDIR HelloWorld

CMD dotnet run