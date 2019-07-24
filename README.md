# sensu-matrix-handler
send alerts to matrix room
## Configuration
configure etc/matrix.conf
and put it on your server /etc/matrix.conf

## Usage

```
api_version: core/v2
type: Handler
metadata:
  name: matrix
spec:
  type: pipe
  runtime_assets:
  - matrix-handler
  command: matrix.py -c /etc/matrix.conf
  timeout: 10
```
