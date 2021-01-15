# drm folder aliases
alias dr="cd ${fullDrmPath}/drm-docker"
alias web="cd ${fullDrmPath}/drm-docker/drm-web"
alias sdk="cd ${fullDrmPath}/drm-docker/drm-sdk"
alias rule="cd ${fullDrmPath}/drm-docker/drm-rule"
alias case="cd ${fullDrmPath}/drm-docker/drm-case"
alias cv2="cd ${fullDrmPath}/drm-docker/drm-case-v2"
alias papi="cd ${fullDrmPath}/drm-docker/drm-processor-api"
alias client="cd ${fullDrmPath}/drm-docker/drm-client"


# yarn aliases
alias ybd='yarn build-dev'
alias yw='yarn watch'
alias yl='yarn local'


# CHECKOUT BRANCHES

# checkout the feature branch
gcf () {
    git checkout ${2} "feature/DISPUTELAB-${1}"
}

# checkout the release branch
gcr () {
    git checkout ${2} "release/${1}"
}

# checkout the bugfix branch
gcbf () {
    git checkout ${2} "bugfix/DISPUTELAB-${1}"
}

# PUSH BRANCHES

# upstream alias (this takes out the requirement to type out feature/DISPUTELAB-)
# first param is the ticket number/name
gpf () {
    git push --set-upstream origin "feature/DISPUTELAB-${1}"
}

# upstream alias (this takes out the requirement to type out release/)
# first param is the ticket number/name
gpr () {
    git push --set-upstream origin "release/${1}"
}

# upstream alias (this takes out the requirement to type out bugfix/DISPUTELAB-)
# first param is the ticket number/name
gpbf () {
    git push --set-upstream origin "bugfix/DISPUTELAB-${1}"
}

gpup () {
    git push --set-upstream origin "${1}"
}

