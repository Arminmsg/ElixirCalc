#!/bin/sh
mix deps.get

cd assets && npm install
cd ..

mix test
mix phx.server