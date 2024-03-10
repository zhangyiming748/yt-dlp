#!/bin/bash

# 读取urls.txt文件中的每一行网址
while IFS= read -r url
do
  echo $url
  # 在这里处理每个网址，例如使用curl获取网页内容
  # curl "$url"
  yt-dlp --proxy=http://192.168.1.5:8889 $url
done < "urls.txt"
