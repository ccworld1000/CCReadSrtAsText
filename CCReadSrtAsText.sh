#!/usr/bin/env sh
#
#  CCReadSrtAsText.sh
#
#  Created by CC on 2022/08/29.
#  Copyright 2022 - now youhua deng (deng you hua | CC) <ccworld1000@gmail.com>
#  https://github.com/ccworld1000/CCReadSrtAsText
#
#  This program is free software; you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation; either version 2 of the License, or
#  (at your option) any later version.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with this program; if not, write to the Free Software
#  Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
#  MA 02110-1301, USA.
#
#

if [[ $# < 1 ]]; then
  echo "please input file name!"
  exit;
fi

file=$1
if [[ -f $file ]]; then
  cat "$file" | grep -v '^$' | grep -v "\-\->" | grep -v '^[0-9]*$'
else
  echo "请确定文件\"$file\"是否存在或者正确"
fi
