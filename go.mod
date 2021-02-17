module gvisor.dev/gvisor

go 1.15

replace github.com/Sirupsen/logrus => github.com/sirupsen/logrus v1.6.0

require (
	cloud.google.com/go v0.75.0 // indirect
	github.com/BurntSushi/toml v0.3.1
	github.com/Microsoft/go-winio v0.4.16 // indirect
	github.com/Microsoft/hcsshim v0.8.14 // indirect
	github.com/bazelbuild/rules_go v0.25.1
	github.com/cenkalti/backoff v1.1.1-0.20190506075156-2146c9339422
	github.com/containerd/cgroups v0.0.0-20201119153540-4cbc285b3327
	github.com/containerd/console v1.0.1
	github.com/containerd/containerd v1.3.9
	github.com/containerd/continuity v0.0.0-20201208142359-180525291bb7 // indirect
	github.com/containerd/fifo v0.0.0-20191213151349-ff969a566b00
	github.com/containerd/go-runc v0.0.0-20200220073739-7016d3ce2328
	github.com/containerd/ttrpc v1.0.2 // indirect
	github.com/containerd/typeurl v0.0.0-20200205145503-b45ef1f1f737
	github.com/docker/distribution v2.7.1-0.20190205005809-0d3efadf0154+incompatible // indirect
	github.com/docker/docker v1.4.2-0.20191028175130-9e7d5ac5ea55 // indirect
	github.com/docker/go-connections v0.3.0 // indirect
	github.com/docker/go-events v0.0.0-20190806004212-e31b211e4f1c // indirect
	github.com/gofrs/flock v0.6.1-0.20180915234121-886344bea079
	github.com/gogo/googleapis v1.4.0 // indirect
	github.com/gogo/protobuf v1.3.1
	github.com/golang/protobuf v1.4.3
	github.com/google/btree v1.0.0
	github.com/google/go-github/v32 v32.1.0 // indirect
	github.com/google/pprof v0.0.0-20210115211752-39141e76b647 // indirect
	github.com/google/subcommands v1.0.2-0.20190508160503-636abe8753b8
	github.com/hashicorp/go-multierror v1.1.0 // indirect
	github.com/kr/pty v1.1.4-0.20190131011033-7dc38fb350b1
	github.com/mattbaird/jsonpatch v0.0.0-20171005235357-81af80346b1a
	github.com/mohae/deepcopy v0.0.0-20170308212314-bb9b5e7adda9
	github.com/opencontainers/image-spec v1.0.1 // indirect
	github.com/opencontainers/runc v0.1.1 // indirect
	github.com/opencontainers/runtime-spec v1.0.2
	github.com/pborman/uuid v1.2.0 // indirect
	github.com/sirupsen/logrus v1.7.0
	github.com/syndtr/gocapability v0.0.0-20180916011248-d98352740cb2
	github.com/vishvananda/netlink v1.0.1-0.20190930145447-2ec5bdc52b86
	github.com/vishvananda/netns v0.0.0-20210104183010-2eb08e3e575f // indirect
	github.com/xeipuuv/gojsonschema v1.2.0 // indirect
	go.uber.org/multierr v1.6.0 // indirect
	golang.org/x/sys v0.0.0-20210119212857-b64e53b001e4
	golang.org/x/time v0.0.0-20191024005414-555d28b269f0
	google.golang.org/grpc v1.36.0-dev.0.20210122012134-2c42474aca0c // indirect
	google.golang.org/protobuf v1.25.1-0.20201020201750-d3470999428b
	honnef.co/go/tools v0.1.1 // indirect
	k8s.io/api v0.16.13
	k8s.io/apimachinery v0.16.14-rc.0
	k8s.io/client-go v0.16.13
)
