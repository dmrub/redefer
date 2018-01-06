############### Configuration ###############

APP_NAME=rhizomik
IMAGE_PREFIX=${IMAGE_PREFIX:-rhizomik}
WAR_FILE=redefer-services-0.1.war
BUILD_PREFIX=${BUILD_PREFIX:-$IMAGE_PREFIX}
IMAGE_TAG=${IMAGE_TAG:-latest}
IMAGE_NAME=${IMAGE_PREFIX}:${IMAGE_TAG}

JAVA_MAVEN_DEPS=(
)

############# End Configuration #############
