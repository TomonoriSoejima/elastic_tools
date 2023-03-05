 har=har.har
#  har=my.har.io
# cat $har | jq ' .log.entries[].response.content | select(.mimeType == "application/json" and .compression == 0) | .text'


cat $har | jq ' .log.entries[].response.content | select(.text | try contains("took")) | .text'



# request

cat  har.har  | jq ' .log.entries[].request | select(.url | contains("ignore_unavailable")) | .url'


cat  har.har  | jq ' .log.entries[] | select(.request.url | try contains("ignore_unavailable")) | .response.content.text , .request.url'
