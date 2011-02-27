#/usr/bin/env bash

# See this to understand how this is supposed to work:
# http://cemerick.com/2010/08/24/hosting-maven-repos-on-github/

mvn --batch-mode release:prepare
mvn -DaltDeploymentRepository=dverstap-github-releases::default::file:../maven-repo/releases release:perform
