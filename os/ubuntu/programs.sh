#!/bin/bash

SCRIPTDIR=$(dirname $0)

$SCRIPTDIR/programs/docker.sh
$SCRIPTDIR/programs/hashicorp.sh
$SCRIPTDIR/programs/helm.sh
$SCRIPTDIR/programs/kubectl.sh