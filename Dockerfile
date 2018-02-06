FROM elixir:1.5.3
MAINTAINER Eric Haase <erichaase@gmail.com>
RUN apt-get update && apt-get install --yes postgresql-client
ADD . /app
RUN mix local.hex --force
WORKDIR /app
RUN mix local.rebar --force
EXPOSE 4000
CMD ["mix", "do", "ecto.migrate,", "phoenix.server"]
