# Dockerfile for binder
# Reference: https://mybinder.readthedocs.io/en/latest/dockerfile.html#preparing-your-dockerfile

# Information on using Sage in Binder can be found here: https://github.com/sagemath/sage/tree/develop/docker
#FROM sagemath/sagemath:latest
#FROM sagemath/sagemath:9.1-py3
#FROM sagemath/sagemath-jupyter:latest

# Copy the contents of the repo in ${HOME}
#COPY --chown=sage:sage . ${HOME}

# Install this package and dependencies
#RUN sage -pip install uofsc_calculus_labs
FROM sagemath/sagemath:latest

RUN sudo apt-get -y update
RUN sudo apt-get -y install git
RUN git clone https://github.com/ann-clifton/Calc1Labs.git /home/sage/Calc1Labs

# Start Jupyter when the container runs
CMD ["sage-jupyter"]
