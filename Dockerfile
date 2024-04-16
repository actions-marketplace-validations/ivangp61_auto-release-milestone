FROM mcr.microsoft.com/dotnet/core/sdk:3.1

LABEL "com.github.actions.name"="Auto Release Milestone"
LABEL "com.github.actions.name"="Drafts a GitHub release based on a newly closed milestone"

LABEL version="0.1.0"
LABEL repository="https://github.com/ivangp61/auto-release-milestone.git"
LABEL maintainer="Ivan Gonzalez Perez"

RUN apt-get update && apt-get install -y jq
# RUN yarn install --ignore-engines
RUN dotnet tool install --global GitReleaseManager.Tool

ENV PATH /root/.dotnet/tools:$PATH

COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]