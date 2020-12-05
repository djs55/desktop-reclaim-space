# desktop-reclaim-space

A simple tool to reclaim space inside the Docker Desktop VM.

Before using this tool, remove unused data:

```
$ docker system prune
```

To use this tool:
```
$ docker run --privileged --pid=host docker/desktop-reclaim-space
```

On macOS using a `Docker.raw`, the effect should be instant. To see the true size of the `Docker.raw` use:
```
$ cd ~/Library/Containers/com.docker.docker/Data/vms/0/data
$ ls -lh Docker.raw
-rw-r--r--@ 1 username  staff    64G Dec 13 17:42 Docker.raw
$ du -sh Docker.raw
6.3G	Docker.raw
```

here can see the disk usage is 6.3G, while 64G is the maximum potential disk size.

On macOS using a `Docker.qcow2`, there is a background compaction process which may take several minutes to complete.
