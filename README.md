<p><img src="https://avatars1.githubusercontent.com/u/12563465?s=200&v=4" alt="OCI logo" title="oci" align="left" height="70" /></p>
<p><img src="https://i.imgur.com/IBNz2CM.jpg" alt="0xO1 logo" title="0xO1" align="right" height="80" /></p>

Container File :zero::one: Demo
=========
![GitHub release (latest by date)](https://img.shields.io/github/v/release/0x0I/container-file-template?color=yellow)
[![0x0I](https://circleci.com/gh/0x0I/container-file-demo.svg?style=svg)](https://circleci.com/gh/0x0I/container-file-demo)

**Table of Contents**
  - [Build](#build)
  - [Config](#config)
      - [port mappings](#port-mappings)
  - [Operations](#operations)
  - [Examples](#examples)
  - [License](#license)
  - [Author Information](#author-information)

...description of Container file...

Setup
--------------
Guidelines on running <insert-application> containers are available and organized according to the following software & machine provisioning stages:
* _build_
* _config_
* _operations_

#### Build

...*steps for building <insert-service> container images based on various use-cases/targets*...

e.g.

* `test`: image containing service binaries, test tools and functional test cases for validation

* `release`: minimal resultant image containing service binaries, entrypoints and helper scripts necessary for operations

```bash
docker build --target <target> .
```

#### Config

...*description of <insert-service> container instance configuration options*...

e.g.

`$DEMO_USER` **default**: *world*

* username to say hello to when visiting the demo website!

##### port mappings

...*network ports service containers listen on for various functions and details involving operator customizations*...

| Port  | mapping description | type |config setting | command-line flag |
| ------------- | ------------- | ------------- | ------------- | ------------- |
| `80`    | Apache web server | *TCP*  | `-` | `-` |

#### Operations

...*guidelines for performing operational tasks on <insert-service> container instances*...

Examples
----------------
default example:
```
docker run --env DEMO_USER=<user> 0labs/demo:<tag>
```

License
-------

MIT

Author Information
------------------

This Containerfile was created in 2021 by O1.IO.

🏆 **always happy to help & donations are always welcome** 💸

**Eth:** 0x652eD9d222eeA1Ad843efec01E60C29bF2CF6E4c
