#!/bin/bash
rvm use current
rvm gemset use wcaudit
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/pgsql910/lib
rails server -p 3335
