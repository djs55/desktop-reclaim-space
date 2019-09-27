# desktop-reclaim-space
A simple tool to reclaim space inside the Docker Desktop VM.

Before using:

```
$ docker system prune
```

To use:
```
$ docker run --privileged --pid=host docker/desktop-reclaim-space
```

On Mac using a `Docker.raw`, the effect should be instant. To see the true size of the `Docker.raw` use:
```
$ cd ~/Library/Containers/com.docker.docker/Data/vms/0/data
$ ls -klsh Docker.raw
2333548 -rw-r--r--@ 1 username  staff    64G Dec 13 17:42 Docker.raw
```
where the number `2333548` is the disk usage in KB, while 64G is the maximum potential disk size.

On Mac using a `Docker.qcow2`, there is a background compaction process which may take several minutes to complete.
