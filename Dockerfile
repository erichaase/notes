FROM elixir:1.5.3
MAINTAINER Eric Haase <erichaase@gmail.com>
ADD . /app
RUN mix local.hex --force
WORKDIR /app
EXPOSE 4000
CMD ["/bin/bash"]
