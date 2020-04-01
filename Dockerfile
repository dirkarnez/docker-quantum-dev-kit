### Not Working, wait for linux support
FROM mcr.microsoft.com/dotnet/core/sdk:3.1

RUN echo "Asia/Shanghai" > /etc/timezone
# RUN printf "deb http://archive.debian.org/debian/ jessie main\ndeb-src http://archive.debian.org/debian/ jessie main\ndeb http://security.debian.org jessie/updates main\ndeb-src http://security.debian.org jessie/updates main" > /etc/apt/sources.list

RUN apt-get update -y \ 
&& apt-get -y --no-install-recommends install \
    libgomp1 \
&& apt-get clean \
&& rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# RUN snap install --classic code

RUN dotnet new -i Microsoft.Quantum.ProjectTemplates \
 && dotnet new console -lang "Q#" -o HelloWorld

WORKDIR HelloWorld

CMD dotnet run

