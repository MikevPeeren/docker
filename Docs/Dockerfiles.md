# Dockerfile

A Dockerfile is a 'recipe' for creating your Image.  
It looks like a shell script, except that it isn't it is it's own language.

## FROM

This is required to be in the file, it is usually a minimal Linux distribution like debian or alpine.

## WORKDIR

Change the working directory, using WORKDIR is preferred instead of using RUN cd

## ENV

You can define optional environment variable that can be used later and is set as envvar when the container is running.

## RUN

You can define optional commands to run at shell inside the Container at build time. For example adding packages that you require.

## Expose

Expose the ports you define here on the docker virtual network.
You are still require to use -p or -P to open/forward ports on the host.

## CMD

There is only one CMD allowed, so if there are multiple the last one wins.
This is define to run the specified command when a container is launched.
