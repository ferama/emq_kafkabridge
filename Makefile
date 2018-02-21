PROJECT = emq_kafkabridge
PROJECT_DESCRIPTION = EMQ Kafka Bridge
PROJECT_VERSION = 2.3.4

BUILD_DEPS = emqttd 
dep_emqttd = git https://github.com/emqtt/emqttd master

ERLC_OPTS += +debug_info
ERLC_OPTS += +'{parse_transform, lager_transform}'

COVER = true

include erlang.mk

app:: rebar.config
