You shouldn't run things in your Docker containers as root.

This is a Docker image based on the [` centos:8` base
image] that adds a
`containeruser` user with UID 5107.

It is available on the Docker Hub as
[`lukaszbielinski/centos-nonroot`].
