variable "VERSION" {
    default = "0.24.1"
}

group "default" {
    targets = ["scratch"]
}

target "scratch" {
    cache-from = [
        "ghcr.io/oanqa/descheduler"
    ]

    args = {
        ARCH = "amd64"
        VERSION = "${VERSION}"
    }

    tags = [
        "ghcr.io/oanqa/descheduler:v${VERSION}"
    ]
}