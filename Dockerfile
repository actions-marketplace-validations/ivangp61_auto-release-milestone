FROM mcr.microsoft.com/dotnet/core/sdk:3.1

LABEL "com.github.actions.name"="Auto Release Milestone"
LABEL "com.github.actions.name"="Drafts a GitHub release based on a newly closed milestone"

LABEL version="0.1.0"
LABEL repository="https://github.com/ivangp61/auto-release-milestone.git"
LABEL maintainer="Ivan Gonzalez Perez"

COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]