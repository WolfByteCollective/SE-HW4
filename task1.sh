#!/bin/bash

ps -a| grep -E "bash infinite.sh" | grep -v grep | cut -d ' ' -f1 | xargs kil
