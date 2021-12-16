#!/bin/bash
export FLASK_ENV=development

flask run -h 0.0.0.0 -p 3000 > srv-log.txt