#!/bin/sh
echo ::group::Autostarting cloudflared for Linux
nohup cloudflared access tcp --hostname ${cloudflare_tunnel_hostname} --url ${cloudflare_tunnel_listen} > ${RUNNER_TEMP}/cloudflared.log 2>&1 &
echo $! > ${RUNNER_TEMP}/cloudflared.pid
echo ::endgroup::
