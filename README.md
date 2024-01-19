# iGPU-base

This repo is the base for the image on kpns named iGPU-base:v5.0.2. This repo consist of binaries used to compile the image. Currently at version v5.0.2, check tags.

# Build instructions
Ideally you do not need to build it. This is just for reference. Corresponding image can be found on Azure container registery iGPU-base. In case you want to experiment with the base here:

* Configure your awscli. Details [how to setup AWS-CLI](https://kopernikusauto.atlassian.net/wiki/spaces/ML/pages/280330254/How+to+Setup+AWSCLI).

* Install dvc
```
$ pip install dvc[s3]
```

* Pull the binaries
```
$ dvc pull
```

* Compile the dockerfile
```
$ docker build -t iGPU:v5.0.2 .
```

NOTE: Ideally this would only compile on NVIDIA jetson AGX orin with jetpack 5.0.2