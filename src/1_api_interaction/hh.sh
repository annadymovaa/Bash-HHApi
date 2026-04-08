
#!/bin/sh
VAC=$1
curl -G --data-urlencode "text=NAME:$VAC" -d "per_page=20" https://api.hh.ru/vacancies | jq  '.' > hh.json