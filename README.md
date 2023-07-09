# Qt SSL example

Example to just download a file via http(s).

## Usage

Configure (adjust path to Qt):

```
mkdir build
(cd build && ~/Qt/5.15.2/gcc_64/bin/qmake -r ../ssl-example.pro)
```

Build and run:

```
(cd build && make -j2 && ./ssl-example https://example.com)
```
