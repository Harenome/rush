Rush
====

A minimal and stupid shell.

This project is an attempt at learning **[Rust][]**.

Requirements
------------

### Minimal requirements
- **[Rust][]**
- **[Cargo][]**

The following command installs or updates both **[Rust][]** and **[Cargo][]**:
```bash
$ curl www.rust-lang.org/rustup.sh | sudo bash
```

#### Other install methods
See “_[Installing Rust][]_” in the [Rust Guide][].

### Optional requirements
- **[Docker][]**: See “_[Installing Docker][]_” in the [Docker Docs][].
- **[Vagrant][]**: See “_[Installing Vagrant][]_” in the [Vagrant Docs][].

Building and running
--------------------

### Inside Docker
The [Dockerfile](Dockerfile) at the root of the project builds a minimal
**[CentOS][]** 7 image with **[Rust][]** and **[Cargo][]**.

```bash
$ docker build -t rust:nightly .
$ docker run --privileged=true -i -v $(pwd):/project:rw -t rust:nightly

# Do some magic...

$ exit
```

### Inside Vagrant
The provider used by the [Vagrantfile](Vagrantfile) at the root of the project
is **[Docker][]**. It builds an **[Ubuntu][]** 14.04 image with **[Rust][]** and **[Cargo][]**.

```bash
$ vagrant up --provider=docker
$ vagrant ssh
$ cd project

# Do some magic...

$ exit
$ vagrant destroy
```

### Building
Once you have either:
- installed the requirements on your machine,
- run the **[Docker][]** container,
- fired up **[Vagrant][]**,

you can build and run the project:

```bash
$ cargo build
$ target/rush
```

If you need to clean:

```bash
$ cargo clean
```

License
-------
Copyright © 2014 RAZANAJATO RANAIVOARIVONY Harenome.
All rights reserved.

Licensed under the [MIT License][]. See the ```COPYING``` file.

[MIT License]: http://opensource.org/licenses/MIT
[Rust]: http://www.rust-lang.org/
[Cargo]: http://crates.io/
[Docker]: http://docker.io/
[Vagrant]: https://www.vagrantup.com/
[Ubuntu]: http://www.ubuntu.com/
[CentOS]: https://www.centos.org/
[Installing Rust]: http://doc.rust-lang.org/guide.html#installing-rust
[Installing Docker]: https://docs.docker.com/installation/
[Installing Vagrant]: https://docs.vagrantup.com/v2/installation/index.html
[Rust Guide]: http://doc.rust-lang.org/guide.html
[Docker Docs]: http://docs.docker.com/
[Vagrant Docs]: http://docs.vagrantup.com/v2/
