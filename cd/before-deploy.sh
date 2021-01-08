#!/usr/bin/env bash
if [ -n "$TRAVIS_TAG" ]; then
      openssl aes-256-cbc -K $encrypted_8e13cbe74349_key -iv $encrypted_8e13cbe74349_iv -in cd/codesigning.asc.enc -out cd/codesigning.asc -d
	  gpg --fast-import cd/codesigning.asc
fi
