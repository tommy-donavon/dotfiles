#!/bin/bash

setenv SCRIPTDIR `dirname $0`

$SCRIPTDIR/docker.sh
$SCRIPTDIR/hashicorp.sh
$SCRIPTDIR/helm.sh
$SCRIPTDIR/kubectl.sh