#!/bin/bash

deepspeed train.py --deepspeed --deepspeed_config config.json $@
