#!/bin/bash

scan_build() {
    scan-build --use-analyzer=/usr/bin/clang "${@}"
}

run_action() {
    local action="${1}"
    shift

    local configure_args=(
        --prefix=/usr
        --sysconfdir=/etc
    )

    case "${action}" in
        configure-full)
            ./configure "${configure_args[@]}" "${@}"
            ;;
        scan-build)
            scan_build ./configure "${configure_args[@]}" "${@}"
            scan_build make
            ;;
    esac
}

main() {
    autoreconf -i -Wall
    intltoolize --force --automake

    [[ "#{#}" != 0 ]] && run_action "${@}"
}

main "${@}"
