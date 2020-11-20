#! /bin/bash

while true
do
      file=time-$(date +%s).log
      curl -s 'https://www.amazon.de/gp/twister/ajaxv2?acAsin=B08H99BPJN&sid=262-2230441-6963253&ptd=VIDEO_GAME_HARDWARE&keywords=Playstation%205&sCac=1&twisterView=glance&pgid=video_games_display_on_website&sr=8-1&rid=NJD26CA46EEKRA97GHVF&isP=1&auiAjax=1&json=1&dpxAjaxFlag=1&isUDPFlag=1&ee=2&originalHttpReferer=https%3A%2F%2Fwww.amazon.de%2Fs%3Fk%3DPlaystation%2B5%26amp%3Bref%3Dnb_sb_noss_2&parentAsin=B08JVHJNHG&enPre=1&qid=1605785688&dcm=1&storeID=videogames&ppw=&ppl=&isFlushing=2&dpEnvironment=hardlines&asinList=B08H93ZRK9&id=B08H93ZRK9&mType=full&psc=1' -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:82.0) Gecko/20100101 Firefox/82.0' -H 'Accept: text/html,*/*' -H 'Accept-Language: en-GB,en;q=0.7,pt;q=0.3' --compressed -H 'X-Requested-With: XMLHttpRequest' -H 'Connection: keep-alive' -H 'Referer: https://www.amazon.de/-/en/dp/B08H93ZRK9/ref=sr_1_1?dchild=1&keywords=Playstation+5&qid=1605785688&sr=8-1' -H 'TE: Trailers' -o $file
      if grep -q 'Currently unavailable.' $file; then
	  echo "not available"
      else
	  echo "BUY BUY BUY"
	  mpg123 ./0013228.mp3
      fi
      sleep 10
done
