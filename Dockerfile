FROM bandi13/gui-docker:1.6

USER root

RUN export DEBIAN_FRONTEND=noninteractive \
    && apt-get update -y \
    && apt-get install -y software-properties-common \
    && add-apt-repository ppa:obsproject/obs-studio \
    && apt-get update -y \
    && apt-get install -y obs-studio \
    && apt-get clean -y

USER dockerUser

RUN echo "obs" >> /opt/startup_scripts/obs.sh
