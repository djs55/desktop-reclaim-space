FROM justincormack/nsenter1
ENTRYPOINT ["/usr/bin/nsenter1", "/sbin/fstrim", "/var/lib/docker"]
