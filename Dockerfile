FROM ubuntu:14.04

# Install generic utilities, Install Python2 utilities and required packages
RUN apt-get update -qq && apt-get -y -q upgrade && apt-get install -y \
      curl mtr traceroute tcptraceroute htop git \
      python ipython python-pip python-setuptools cython ipython-notebook \
      ipython-qtconsole python-dev python-scipy python-numpy python-matplotlib \
      python-networkx python-gnuplot python-mako python-nose python-docutils

RUN pip install --upgrade --quiet \
      Babel imagesize coverage autonetkit numpydoc cheesecake pylint sphinx \
      topzootools virtualenv virtualenvwrapper

# # Install FNSS core library
RUN pip install --quiet -U fnss

# Install Mininet
RUN apt-get -y -q install mininet \
    && service openvswitch-controller stop \
    && update-rc.d openvswitch-controller disable \
    && service openvswitch-switch start
