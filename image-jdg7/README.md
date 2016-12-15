Base JDG 7 Image
=======

A base JBoss JDG 7 image to create & execute JDG 7 demo containers on top.  

### Image Content

- JDK 1.8 , Maven & Git
- JDG 7 , User :  ```admin``` ```redhat1!```  

### How to use

Default command executes a standalone JDG server in clustered mode. If this is the only stuff that you need, just run it :

```bash
  docker run -it --rm --name jdg --hostname jdg jboss-demo/jdg:7
```
 > In standalone mode, JDG is started in debug mode and debug port is specified as 8787.

 To boot it in standalone mode:

 ```bash
 docker run -it --rm --name jdg --hostname jdg jboss-demo/eap:7  /opt/jboss/jdg/jboss-datagrid-7.0.0-server/bin/startJdgStandalone.sh
 ```

To boot it in domain mode:

```bash
docker run -it --rm --name jdg --hostname jdg jboss-demo/eap:7  /opt/jboss/jdg/jboss-datagrid-7.0.0-server/bin/startJdgDomain.sh
```
## Build Prerequisites

### Installation Files
   You need to download & place required files into install subdirectory. Please read [README](./install/README.md) file under install subdirectory to see required files.

## Building The Image
   simply run

```bash
  sh build.sh
```

 > You can clean your environment with ```docker-clean``` script
