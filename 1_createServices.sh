cf create-service p-service-registry standard discovery-service
cf create-service p-config-server standard config-server
cf create-service p-circuit-breaker-dashboard standard circuit-breaker-dashboard
######## MySQL
cf create-service p-mysql 100mb traderdb
# Uncomment if usng PWS
#cf create-service cleardb spark traderdb
# MySQL v2
#cf create-service p.mysql db-small traderdb
######## RabbitMQ
# PWS
#cf create-service cloudamqp lemur zipkinRabbit
#cf create-service p.rabbitmq cluster zipkinRabbit
cf create-service p-rabbitmq standard zipkinRabbit

cf services
