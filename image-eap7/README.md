EAP 7 Image
=======

A base JBoss EAP 7 to create & execute EAP 7 demo containers on top.  

### Image Content

- JDK 1.8 , Maven & Git
- EAP 7 , User :  ```admin``` ```redhat1!```  

### How to use

Default command executes a standalone EAP server. If this is the only stuff that you need, just run it :

```bash
  docker run -it --rm --name eap --hostname eap jboss-demo/eap:7
```
 > In standalone mode, EAP is started in debug mode and debug port is specified as 8787.

To boot it in domain mode:

```bash
docker run -it --rm --name eap --hostname eap jboss-demo/eap:7  /opt/jboss/eap/jboss-eap-7.0/bin/startEapDomain.sh
```
## Build Prerequisites
  [jboss-demo:jdk:8](https://github.com/serhat-dirik/docker-demo-images/tree/master/image-jdk/README.md) image must be build and placed in local repo before building this image 

### Installation Files
   You need to download & place required files into install subdirectory. Please read [README](./install/README.md) file under install subdirectory to see required files.

## Building The Image
   simply run

```bash
  sh build.sh
```

 > You can clean your environment with ```docker-clean``` script
