# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    init.sh                                            :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gizawahr <gizawahr@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/05/01 12:32:12 by gizawahr          #+#    #+#              #
#    Updated: 2021/07/25 15:39:22 by gizawahr         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

INDEX=ON

#!/bin/bash

service php7.3-fpm start
service mysql start

mysql < /var/db_wp.sql
mysql < /var/user.sql

if [ "$INDEX" = "ON" ]; then
    mv /var/index.html /var/www/html
fi

nginx -g "daemon off;"
