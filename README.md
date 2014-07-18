Rush
====

Requirements
------------

### Minimal requirements
- **[Rust][]**
- **[Cargo][]**

The following command installs or updates both **Rust** and **Cargo**:
```bash
$ curl www.rust-lang.org/rustup.sh | sudo bash
```

#### Other install methods
See [Installing Rust][] in the Rust Guide.

### Optional requirements
- **[Docker][]**

```bash
$ yum install docker-io
```

Building
--------
Once ```rustc``` and ```cargo``` are installed:
```bash
$ cargo build
$ target/rush
```

You can also use a container:
```bash
$ docker build -t rust:nightly .
$ docker run --privileged=true -i -v $(pwd):/project:rw -t rust:nightly
$ cargo build
$ target/rush
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
[Installing Rust]: http://doc.rust-lang.org/guide.html#installing-rust
