#!/bin/bash -x
exec dkp-makepkg \
     --cleanbuild \
     --clean \
     --force \
     --syncdeps
