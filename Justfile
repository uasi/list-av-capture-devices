_default:
    @just --list

build:
    swift build

build-release:
    swift build --configuration release

format:
    swift format format --in-place --recursive Package.swift Sources

lint:
    swift format lint --recursive Package.swift Sources

test:
    swift test
