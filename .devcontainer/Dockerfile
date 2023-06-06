FROM python:3.10.10 as base

ARG USERNAME=non-root
ARG USER_UID=1000
ARG USER_GID=$USER_UID

# Create the user
RUN groupadd --gid $USER_GID $USERNAME \
	&& useradd --uid $USER_UID --gid $USER_GID -m $USERNAME \
	#
	# [Optional] Add sudo support. Omit if you don't need to install software after connecting.
	&& apt-get update \
	&& apt-get install -y sudo \
	&& echo $USERNAME ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/$USERNAME \
	&& chmod 0440 /etc/sudoers.d/$USERNAME


FROM base as dev
RUN pip install --upgrade pip && pip install poetry==1.4.1
ENV POETRY_VIRTUALENVS_IN_PROJECT=true
USER $USERNAME
