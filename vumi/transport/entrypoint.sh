AMQP_OPTS=""
if [[ -n "$AMQP_HOST" ]]; then
  AMQP_OPTS="--hostname $AMQP_HOST \
    --port ${AMQP_PORT:-5672} \
    --vhost ${AMQP_VHOST:-/} \
    --username ${AMQP_USERNAME:-guest} \
    --password ${AMQP_PASSWORD:-guest}"
fi

exec twistd --nodaemon \
  -n \
  vumi_worker \
  --worker-class=vumi.transports.smpp.SmppTransport \
  --config=./config.yaml \
  $AMQP_OPTS
