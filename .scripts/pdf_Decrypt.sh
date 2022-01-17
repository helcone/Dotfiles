#!/usr/bin/env bash

Password=$1

# Decrypt PDF
qpdf --replace-input --password='$Password' --progress --decrypt $File
