FROM mcr.microsoft.com/dotnet/sdk:8.0

LABEL "com.github.actions.name"="Auto Release Milestone"
LABEL "com.github.actions.name"="Drafts a GitHub release based on a newly closed milestone"

LABEL version="0.1.0"
LABEL repository="https://github.com/ivangp61/auto-release-milestone.git"
LABEL maintainer="Ivan Gonzalez Perez"

RUN apt-get update && apt-get install -y jq
RUN dotnet tool install -g GitReleaseManager.Tool
# --version 0.12.0

# ENV PATH /root/.dotnet/tools:$PATH
ENV PATH="${PATH}:~/root/.dotnet/tools"

COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]