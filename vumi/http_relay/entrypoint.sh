AMQP_OPTS="--hostname $AMQP_HOST \
    --port ${AMQP_PORT:-5672} \
    --vhost ${AMQP_VHOST:-/} \
    --username ${AMQP_USERNAME:-guest} \
    --password ${AMQP_PASSWORD:-guest}"

CONFIG_FILE="./config.yaml"
REDIS_HOST=${REDIS_HOST:-localhost}
REDIS_PORT=${REDIS_PORT:-6379}

sed -ie "s|<redis_host>|${REDIS_HOST}|" ${CONFIG_FILE}
sed -ie "s|<redis_port>|${REDIS_PORT}|" ${CONFIG_FILE}

exec twistd --nodaemon -n vumi_worker --worker-class=vumi.application.http_relay.HTTPRelayApplication --config=${CONFIG_FILE} $AMQP_OPTS