
REPO_DIR=${1:-$PWD}
echo "making $REPO_DIR readable for local development"
chmod a+x ${REPO_DIR}
chmod -R a+r ${REPO_DIR}
chmod -R a+x ${REPO_DIR}/.git
docker run --net=host --volume ${REPO_DIR}:${REPO_DIR} --name cscc-jenkins --rm edu.cscc.special-topics/jenkins:latest
