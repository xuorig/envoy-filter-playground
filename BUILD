package(default_visibility = ["//visibility:public"])

load(
    "@envoy//bazel:envoy_build_system.bzl",
    "envoy_cc_binary",
    "envoy_cc_library",
    "envoy_cc_test",
)

load("@envoy_api//bazel:api_build_system.bzl", "api_proto_library")

envoy_cc_binary(
    name = "envoy",
    repository = "@envoy",
    deps = [
        ":xuorig_filter_config",
        "@envoy//source/exe:envoy_main_entry_lib",
    ],
)

api_proto_library(
    name = "xuorig_filter_proto",
    srcs = ["xuorig_filter.proto"]
)

envoy_cc_library(
    name = "xuorig_filter_lib",
    srcs = ["xuorig_filter.cc"],
    hdrs = ["xuorig_filter.h"],
    repository = "@envoy",
    deps = [
        ":xuorig_filter_proto_cc",
        "@envoy//source/exe:envoy_common_lib",
    ],
)

envoy_cc_library(
    name = "xuorig_filter_config",
    srcs = ["xuorig_filter_config.cc"],
    repository = "@envoy",
    deps = [
        ":xuorig_filter_lib",
        "@envoy//include/envoy/server:filter_config_interface",
    ],
)

envoy_cc_test(
    name = "xuorig_filter_integration_test",
    srcs = ["xuorig_filter_integration_test.cc"],
    repository = "@envoy",
    deps = [
        ":xuorig_filter_lib",
        "@envoy//test/integration:http_integration_lib",
    ],
)